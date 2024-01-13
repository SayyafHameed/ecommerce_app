import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/services/services.dart';

import '../constants/app_theme.dart';

class AppChangeLocaleController extends GetxController
{
  Locale? language;

  AppServices appServices = GetInstance().find();
  // AppServices appServices = Get.find();
  ThemeData appTheme = themeEnglish;

  changeLang(String langCode)
  {
    Locale locale = Locale(langCode);
    appServices.shardPreferences.setString("lang", langCode);
    appTheme = langCode == "ar" ? themeArabic : themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLanguage = appServices.shardPreferences.getString("lang");
    if (sharedPrefLanguage == "ar"){
      language = const Locale("ar");
      appTheme = themeArabic;
    }
    else if (sharedPrefLanguage == "en"){
      language = const Locale("en");
      appTheme = themeEnglish;
    }
    else {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = themeEnglish;

    }
    super.onInit();
  }
}