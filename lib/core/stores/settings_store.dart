import 'package:get/get.dart';
import 'package:tekoop/core/services/localization_service.dart';

import '../services/local_storage.dart';

class SettingsStore extends GetxController {
  late final LocalStorage _storage;
  SettingsStore(this._storage);

  static SettingsStore get to => Get.find();

  static const SETTINGS = 'SETTINGS';
  static const LANGUAGE = 'LANGUAGE';
  static const COUNTRY = 'COUNTRY';

  late Map<String, dynamic> settings;

  final isHasSettings = true.obs;

  @override
  void onInit() {
    super.onInit();
    settings = _storage.read(SETTINGS);
    if (settings == null) {
      isHasSettings.value = false;
    }else{
      LocalizationService().changeLocal(settings[LANGUAGE]);
    }
  }

  void saveSettings(Map<String, dynamic> settings) async {
    await _storage.write(SETTINGS, settings);
    this.settings = settings;
    isHasSettings.value = true;
    update();
  }

  void updateSettings(String name, int value) {
    settings[name] = value;
    saveSettings(settings);
    update();
  }
}
