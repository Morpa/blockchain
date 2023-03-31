import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/failures/http_request_failure.dart';
import '../../../../domain/models/crypto/crypto.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState.loading() = _Loading;
  factory HomeState.failed(HttpRequestFailure failure) = _Failed;
  factory HomeState.loaded(List<Crypto> cryptos) = _Loaded;
}
