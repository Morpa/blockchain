import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../../domain/models/ws_status/ws_status.dart';
import '../../domain/repositories/ws_repository.dart';

class WsRepositoryImpl implements WsRepository {
  WsRepositoryImpl(
    this.builder, [
    this._reconnectionDuration = const Duration(seconds: 5),
  ]);

  final WebSocketChannel Function(List<String>) builder;

  final Duration _reconnectionDuration;

  WebSocketChannel? _channel;
  StreamController<Map<String, double>>? _priceController;
  StreamController<WsStatus>? _wsController;
  StreamSubscription? _subscription;

  Timer? _timer;

  @override
  Future<bool> connect(List<String> ids) async {
    try {
      _notifyStatus(const WsStatus.connecting());
      _channel = builder(ids);
      await _channel!.ready;
      _subscription = _channel!.stream.listen(
        (event) {
          //for know type of data
          // print(event.runtimeType);

          final map = Map<String, String>.from(jsonDecode(event));
          // to create a new map entrie
          final data = <String, double>{}..addEntries(
              map.entries.map(
                (e) => MapEntry(
                  e.key,
                  double.parse(e.value),
                ),
              ),
            );

          if (_priceController?.hasListener ?? false) {
            _priceController!.add(data);
          }
        },
        onDone: () => _reconnect(ids),
      );
      _notifyStatus(const WsStatus.connected());
      return true;
    } catch (e) {
      //to avoid warning
      if (kDebugMode) {
        print(e);
      }
      _reconnect(ids);
      return false;
    }
  }

  void _reconnect(List<String> ids) {
    if (_subscription != null) {
      _timer?.cancel();
      _timer = Timer(
        _reconnectionDuration,
        () {
          connect(ids);
        },
      );
    }
  }

  void _notifyStatus(WsStatus status) {
    if (_subscription == null) {
      return;
    }

    if (_wsController?.hasListener ?? false) {
      _wsController!.add(status);
    }
  }

  @override
  Future<void> disconnect() async {
    _timer?.cancel();
    _timer = null;
    _subscription?.cancel();
    _subscription = null;
    await _priceController?.close();
    await _wsController?.close();
    await _channel?.sink.close();
    _channel = null;
  }

  @override
  Stream<Map<String, double>> get onPricesChanged {
    _priceController ??= StreamController.broadcast();

    return _priceController!.stream;
  }

  @override
  Stream<WsStatus> get onStatusChanged {
    _wsController ??= StreamController.broadcast();

    return _wsController!.stream;
  }
}
