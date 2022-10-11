import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'core/routes/bindings/initial_binding.dart';
import 'core/routes/pages.dart';
import 'core/routes/routes.dart';
import 'core/services/localization_service.dart';
import 'core/themes/themes.dart';

void main() async{
  await GetStorage.init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      smartManagement: SmartManagement.full,
      title: 'Flutter Classified App Clone',
      theme: Themes.defaultTheme,
      getPages: Pages.getPages,
      initialRoute: Routers.initialRoute,
      initialBinding: InitialBinding(),
      locale: LocalizationService.locale,
      fallbackLocale: LocalizationService.fallbackLocale,
      translations: LocalizationService(),
      defaultTransition: Transition.zoom,
    );
  }
}
