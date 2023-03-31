import 'package:flutter/widgets.dart';

import '../../../../domain/repositories/exchange_repository.dart';
import '../../../../domain/results/get_prices/get_prices_result.dart';
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

    //is serialize a implicity cast
    if (result is GetPricesSuccess) {
      _state = HomeStateLoaded(result.cryptos);
    } else {
      _state = HomeStateFailed();
    }
    notifyListeners();
  }
}
