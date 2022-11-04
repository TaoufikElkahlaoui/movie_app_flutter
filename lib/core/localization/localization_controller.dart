import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/services/services.dart';

class LocalizationController extends GetxController {
  AppService appService = Get.find();

  Locale? language;

  changeLang(String lang) {
    Locale locale = Locale(lang);
    appService.sharedPreferences.setString("lang", lang);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? lang = appService.sharedPreferences.getString("lang");
    // for (var element in Lang.languageList) {
    //   if(element)
    // }
    if (lang == null || lang.isEmpty) {
      language = Locale(Get.deviceLocale!.languageCode);
    } else {
      language = Locale(lang);
    }
    super.onInit();
  }
}
