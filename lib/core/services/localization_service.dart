import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tekoop/core/lang/ar_AL.dart';
import 'package:tekoop/core/lang/en_US.dart';
import 'package:tekoop/core/lang/fr_FR.dart';

class LocalizationService extends Translations {
  // Default locale
  static final locale = Get.locale;

  // fallbackLocale saves the day when the locale gets in trouble
  static final fallbackLocale = Locale('ar', 'AL');

  // Supported languages
  // Needs to be same order with locales
  static final langs = [
    {'id': '0', 'name': 'english', 'flag': 'assets/images/english_flag.png'},
    {'id': '1', 'name': 'arabic', 'flag': 'assets/images/algeria_flag.png'},
    {'id': '2', 'name': 'french', 'flag': 'assets/images/french_flag.png'},
  ];

  static final countries = [
    {'id': '0', 'name': 'algeria', 'flag': 'assets/images/algeria_flag.png'},
  ];

  // Supported locales
  // Needs to be same order with langs
  static final locales = [
    Locale('en', 'US'),
    Locale('ar', 'AL'),
    Locale('fr', 'FR'),
  ];

  // Keys and their translations
  // Translations are separated maps in `lang` file
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en_US, // lang/en_us.dart
        'ar_AL': ar_AL, // lang/ja_jp.dart
        'fr_FR': fr_FR, // lang/tr_tr.dart
      };

  // Gets locale from language, and updates the locale
  void changeLocale(String lang) {
    final locale = _getLocaleFromLanguage(lang);
    Get.updateLocale(locale!);
  }

  // Gets locale from language, and updates the locale
  void changeLocal(int id) {
    final locale = _getLocaleFromLanguageIndex(id);
    Get.updateLocale(locale!);
  }

  // Finds language in `langs` list and returns it as Locale
  Locale? _getLocaleFromLanguage(String lang) {
    for (int i = 0; i < langs.length; i++) {
      if (lang == langs[i]['name']) return locales[i];
    }
    return Get.locale;
  }

  // Finds language in `langs` list and returns it as Locale
  Locale? _getLocaleFromLanguageIndex(int id) {
    if (id < langs.length) return locales[id];

    return Get.locale;
  }
}
