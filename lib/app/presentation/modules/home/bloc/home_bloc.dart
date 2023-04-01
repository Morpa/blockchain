import 'package:flutter/widgets.dart';

import '../../../../domain/repositories/exchange_repository.dart';

import '../../../../domain/repositories/ws_repository.dart';
import 'home_state.dart';

class HomeBloc extends ChangeNotifier {
  HomeBloc({
    required this.exchangeRepository,
    required this.wsRepository,
  });

  final ExchangeRepository exchangeRepository;
  final WsRepository wsRepository;

  HomeState _state = const HomeState.loading();

  HomeState get state => _state;

  final _ids = [
    'bitcoin',
    'ethereum',
    'monero',
    'litecoin',
    ' usd-coin',
    'dogecoin',
  ];

  Future<void> init() async {
    state.maybeWhen(
      loading: () {},
      orElse: () {
        _state = const HomeState.loading();
        notifyListeners();
      },
    );

    final result = await exchangeRepository.getPrices(_ids);

    _state = result.when(
        left: (failure) => _state = HomeState.failed(failure),
        right: (cryptos) {
          startPriceListening();

          return HomeState.loaded(cryptos: cryptos);
        });

    notifyListeners();
  }

  Future<bool> startPriceListening() async {
    final connected = await wsRepository.connect(_ids);

    state.mapOrNull(
      loaded: (state) {
        _state = state.copyWith(
          wsStatus:
              connected ? const WsStatus.connected() : const WsStatus.failed(),
        );

        notifyListeners();
      },
    );

    return connected;
  }
}
