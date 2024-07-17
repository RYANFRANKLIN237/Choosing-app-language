import 'dart:ui';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LanguageController extends GetxController{
  final box = GetStorage();
  var selectedLanguage = 'en'.obs; //defined as RxString

  LanguageController() {
    selectedLanguage.value = box.read('languageCode') ?? 'en';
  }

  void changeLanguage(String langCode, String countryCode) {
    var locale = Locale(langCode, countryCode);
    Get.updateLocale(locale);

    // Store the selected language
    box.write('languageCode', langCode);
    box.write('countryCode', countryCode);

    // Update selectedLanguage
    selectedLanguage.value = langCode;
  }
}