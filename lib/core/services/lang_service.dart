// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class LangService extends Translations {
//   // Default locale
//   static final locale = defLanguage(DBService.to.getLanguage());
//
//   // fallbackLocale saves the day when the locale gets in trouble
//   static const fallbackLocale = Locale('ko', 'KR');
//
//   // Supported languages
//   // Needs to be same order with locales
//   static final items = ['English', '한국어'];
//
//   static final flags = [
//     'https://paybek-spring.s3.amazonaws.com/country-flags/us.png',
//     'https://paybek-spring.s3.amazonaws.com/country-flags/kr.png',
//   ];
//
//   static final langs = [
//     'en',
//     'ko',
//   ];
//
//   // Supported locales
//   // Needs to be same order with langs
//   static final locales = [
//     const Locale('en', 'US'),
//     const Locale('ko', 'KR'),
//   ];
//
//   static Locale defLanguage(String code) {
//     var index = langs.indexOf(code);
//     return locales[index];
//   }
//
//   // Keys and their translations
//   // Translations are separated maps in `lang` file
//   @override
//   Map<String, Map<String, String>> get keys => {
//         'en_US': enUS, // lang/en_us.dart
//         'ko_KR': koKr, // lang/ko_kr.dart
//       };
//
//   // Gets locale from language, and updates the locale
//   void changeLocale(String lang) {
//     final locale = _getLocaleFromLanguage(lang);
//     if (locale != null) {
//       Get.updateLocale(locale);
//       DBService.to.setLanguage(lang);
//     }
//   }
//
//   // Finds language in `langs` list and returns it as Locale
//   Locale? _getLocaleFromLanguage(String lang) {
//     for (int i = 0; i < langs.length; i++) {
//       if (lang == langs[i]) return locales[i];
//     }
//     return Get.deviceLocale;
//   }
//
//   String defaultLanguage() {
//     final locale = Get.locale;
//     var lan = locale.toString();
//     if (lan == "en_US") return langs[1];
//     if (lan == "ko_KR") return langs[2];
//     return langs[0];
//   }
// }
