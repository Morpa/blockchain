import '../../domain/repositories/exchange_repository.dart';
import '../../domain/results/get_prices/get_prices_result.dart';

class ExchangeRepositoryImpl implements ExchangeRepository {
  @override
  Future<GetPricesResult> getPrices(String ids) {
    throw UnimplementedError();
  }
}
