import 'package:connectivity/connectivity.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:tekoop/core/network/network_info.dart';
import 'package:tekoop/core/services/http_client.dart';
import 'package:tekoop/core/services/local_storage.dart';
import 'package:tekoop/core/stores/auth_store.dart';
import 'package:tekoop/core/stores/settings_store.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocalStorage>(() => LocalStorageImpl());
    Get.put<HttpClient>(HttpClientImpl(Dio(), Connectivity()), permanent: true);
    Get.put<NetworkInfo>(NetworkInfoImpl(DataConnectionChecker()), permanent: true);
    Get.put<AuthStore>(AuthStore(Get.find<LocalStorage>()), permanent: true);
    Get.put<SettingsStore>(SettingsStore(Get.find<LocalStorage>()), permanent: true);
  }
}
