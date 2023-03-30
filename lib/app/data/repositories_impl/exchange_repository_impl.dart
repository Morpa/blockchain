import '../../domain/repositories/exchange_repository.dart';
import '../../domain/results/get_prices/get_prices_result.dart';
import '../services/remote/exchage_api.dart';

class ExchangeRepositoryImpl implements ExchangeRepository {
  final ExchangeAPI _api;

  ExchangeRepositoryImpl(this._api);

  @override
  Future<GetPricesResult> getPrices(List<String> ids) {
    return _api.getPrices(ids);
  }
}
