import 'package:flutter/widgets.dart';

import '../../../../domain/repositories/exchange_repository.dart';

import 'home_state.dart';

class HomeBloc extends ChangeNotifier {
  HomeBloc({
    required this.exchangeRepository,
  });

  final ExchangeRepository exchangeRepository;

  HomeState _state = HomeStateLoading();

  HomeState get state => _state;

  Future<void> init() async {
    if (state is! HomeStateLoading) {
      _state = HomeStateLoading();
      notifyListeners();
    }

    final result = await exchangeRepository.getPrices(
      [
        'bitcoin',
        'ethereum',
        'monero',
        'litecoin',
        ' usd-coin',
        'dogecoin',
      ],
    );

    _state = result.when(
        left: (_) => _state = HomeStateFailed(),
        right: (cryptos) => HomeStateLoaded(cryptos));

    notifyListeners();
  }
}
