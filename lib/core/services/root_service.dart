// import 'dart:io';
//
// import 'package:alice/alice.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:intl/date_symbol_data_local.dart';
// import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
//
// import '../../data/database/db_service.dart';
// import '../../firebase_options.dart';
// import 'fcm_service.dart';
//
//
// @pragma('vm:entry-point')
// Future<void> _handleMessage(RemoteMessage message) async {
//   FCMService.handleMessage(message);
// }
//
// class RootService {
//   static Alice alice = Alice(showNotification: false);
//
//   static Future<void> init() async {
//     // naver map
//     // await NaverMapSdk.instance.initialize(
//     //     clientId: '570txkohsk',
//     //     onAuthFailed: (ex) {
//     //       print("********* 네이버맵 인증오류 : $ex *********");
//     //     });
//     // KakaoLogin
//     KakaoSdk.init(nativeAppKey: '8655ef276df4da27b0f4c1c29c1b99d6');
//
//     // Database
//     await DBService.init();
//
//     // Firebase
//     await Firebase.initializeApp(
//         options: DefaultFirebaseOptions.currentPlatform);
//     await FCMService.getFirebaseToken();
//     await FCMService.initNotifChannel();
//     await FCMService.initNotification();
//     FirebaseMessaging.onBackgroundMessage(_handleMessage);
//
//     await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
//       DeviceOrientation.portraitUp,
//       DeviceOrientation.portraitDown
//     ]);
//     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//       statusBarColor: Colors.transparent,
//       statusBarIconBrightness: Brightness.dark,
//       statusBarBrightness:
//           !kIsWeb && Platform.isAndroid ? Brightness.dark : Brightness.light,
//       systemNavigationBarColor: Colors.white,
//       systemNavigationBarDividerColor: Colors.transparent,
//       systemNavigationBarIconBrightness: Brightness.dark,
//     ));
//     SystemChrome.setEnabledSystemUIMode(
//       SystemUiMode.manual,
//       overlays: [SystemUiOverlay.top],
//     );
//     initializeDateFormatting();
//   }
// }
