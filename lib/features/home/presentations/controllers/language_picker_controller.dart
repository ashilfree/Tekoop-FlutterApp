import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/routes/routes.dart';
import '../../../../core/services/localization_service.dart';
import '../../../../core/stores/settings_store.dart';

class LanguagePickerController extends GetxController {
  static LanguagePickerController get to => Get.find();

  late List<Item> languages;

  late List<Item> countries;

  late Rx<Item> selectedLanguage;
  late Rx<Item> selectedCountry;

  late List<DropdownMenuItem<Item>> itemsLanguageDropdownList;
  late List<DropdownMenuItem<Item>> itemsCountryDropdownList;

  List<Item> _buildItems(List<Map<String, String>> langs) {
    List<Item> items = [];
    for (Map<String, String> lang in langs) {
      items.add(Item(int.parse(lang['id']!), lang['name']!.tr, lang['flag']!));
    }
    return items;
  }

  List<DropdownMenuItem<Item>> _buildItemDropdown(List itemList) {
    List<DropdownMenuItem<Item>> items = [];
    for (Item item in itemList) {
      items.add(DropdownMenuItem(
        value: item,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              item.name,
              style: Get.textTheme.button,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(item.flag),
            ),
          ],
        ),
      ));
    }
    return items;
  }

  @override
  void onInit() {
    super.onInit();
    languages = _buildItems(LocalizationService.langs);
    countries = _buildItems(LocalizationService.countries);
    itemsLanguageDropdownList = _buildItemDropdown(languages);
    itemsCountryDropdownList = _buildItemDropdown(countries);
    selectedLanguage = languages[0].obs;
    selectedCountry = countries[0].obs;
  }

  void setLanguage(Item item) {
    LocalizationService().changeLocal(item.id);
    languages = _buildItems(LocalizationService.langs);
    itemsLanguageDropdownList = _buildItemDropdown(languages);
    countries = _buildItems(LocalizationService.countries);
    itemsCountryDropdownList = _buildItemDropdown(countries);
    selectedLanguage.value = languages[item.id];
    selectedCountry.value = countries[0];
  }

  void setCountry(Item item) {
    selectedCountry.value = item;
  }

  void saveSettings() {
    SettingsStore.to.saveSettings({
      SettingsStore.LANGUAGE: selectedLanguage.value.id,
      SettingsStore.COUNTRY: selectedCountry.value.id,
    });
    navigationPage();
  }

  void navigationPage() {
    Get.offAndToNamed(Routers.social_auth);
  }
}

class Item {
  const Item(this.id, this.name, this.flag);

  final int id;
  final String name;
  final String flag;
}
