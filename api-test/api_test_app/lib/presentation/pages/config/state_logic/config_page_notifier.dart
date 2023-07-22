import 'package:api_test_app/presentation/pages/config/state_logic/config_page_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConfigPageNotifier extends StateNotifier<ConfigPageState> {
  ConfigPageNotifier() : super(ConfigPageState());

  void setBaseUrlRestApi(String value) {
    state = state.copyWith(baseUrlRestApi: value);
  }

  void setBaseUrlMixedApi(String value) {
    state = state.copyWith(baseUrlMixedApi: value);
  }

  void setBaseUrlGrpcApi(String value) {
    state = state.copyWith(baseUrlGrpcApi: value);
  }

  void setProductsGrpcApiPort(String value) {
    state = state.copyWith(productsPort: value);
  }

  void setSalesGrpcApiPort(String value) {
    state = state.copyWith(salesPort: value);
  }

  void setSuppliersGrpcApiPort(String value) {
    state = state.copyWith(suppliersPort: value);
  }
}

final configPageProvider =
    StateNotifierProvider<ConfigPageNotifier, ConfigPageState>((ref) {
  return ConfigPageNotifier();
});
