// import 'dart:convert';
// import 'dart:developer' as developer;
// import 'dart:math';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:get/get.dart';
//
// import '../../data/database/db_service.dart';
// import '../../presentation/pages/main-page/main_controller.dart';
// import 'log_service.dart';
//
// @pragma('vm:entry-point')
// void handleMsgBack(NotificationResponse? message) async {
//   FCMService.handleMsg(message);
// }
//
// class FCMService {
//   static final FirebaseMessaging _firebaseMessaging =
//       FirebaseMessaging.instance;
//   static FlutterLocalNotificationsPlugin plugin =
//       FlutterLocalNotificationsPlugin();
//   static const AndroidNotificationChannel channel = AndroidNotificationChannel(
//     'high_importance_channel', // id
//     'High Importance Notifications', // title
//     description: 'This channel is used for important notifications.',
//     importance: Importance.max,
//   );
//
//   static AndroidNotificationChannel channelDog = const AndroidNotificationChannel(
//     'dog_sound_channel', // id
//     'Custom Dog Notifications ', // name
//     description: 'This channel is used for dog sounded notifications.',
//     importance: Importance.max,
//     playSound: true,
//     enableVibration: true,
//     enableLights: true,
//     sound: RawResourceAndroidNotificationSound('dog'),
//   );
//
//   static AndroidNotificationChannel channelCat = const AndroidNotificationChannel(
//     'cat_sound_channel', // id
//     'Custom Cat Notifications ', // name
//     description: 'This channel is used for cat sounded notifications.',
//     importance: Importance.max,
//     playSound: true,
//     enableVibration: true,
//     enableLights: true,
//     sound: RawResourceAndroidNotificationSound('cat'),
//   );
//
//   static initNotifChannel() async {
//     var initAndroidSetting =
//         const AndroidInitializationSettings("@mipmap/ic_launcher");
//     var initIosSetting = const DarwinInitializationSettings();
//     var initSetting = InitializationSettings(
//         android: initAndroidSetting, iOS: initIosSetting);
//     await plugin.initialize(initSetting,
//         onDidReceiveNotificationResponse: handleMsg,
//         onDidReceiveBackgroundNotificationResponse: handleMsgBack);
//     await plugin
//         .resolvePlatformSpecificImplementation<
//             AndroidFlutterLocalNotificationsPlugin>()
//         ?.createNotificationChannel(channel);
//     await plugin
//         .resolvePlatformSpecificImplementation<
//             AndroidFlutterLocalNotificationsPlugin>()
//         ?.createNotificationChannel(channelCat);
//     await plugin
//         .resolvePlatformSpecificImplementation<
//             AndroidFlutterLocalNotificationsPlugin>()
//         ?.createNotificationChannel(channelDog);
//   }
//
//   // Foreground
//   static void handleMsg(NotificationResponse? message) async {
//     if (!DBService().isLoggedIn() || message?.payload == null) return;
//
//     LogService.d(message?.payload);
//
//     taskPageNavigationLogic(jsonDecode(message!.payload!));
//   }
//
//   static Future<void> getFirebaseToken() async {
//     try {
//       String? fcmToken = await _firebaseMessaging.getToken();
//       DBService.to.setFirebaseToken(fcmToken);
//       developer.log("FCM Token: ${DBService.to.getFirebaseToken()}");
//     } catch (e) {
//       LogService.e(e);
//     }
//   }
//
//   static Future<String> getFCMTokenFromDB() async {
//     String fcmToken = DBService.to.getFirebaseToken();
//     if (fcmToken.isNotEmpty) return fcmToken;
//     await getFirebaseToken();
//     return DBService.to.getFirebaseToken();
//   }
//
//   static initNotification() async {
//     await _firebaseMessaging.requestPermission(
//       alert: true,
//       announcement: true,
//       badge: true,
//       carPlay: false,
//       criticalAlert: false,
//       provisional: true,
//       sound: true,
//     );
//
//
//
//     // Foreground state
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
//       print('fcmm Token');
//       LogService.i(message.notification?.toMap());
//       LogService.i(message.data);
//       showLocalNotification(message.notification, message.data, channel);
//     });
//
//     FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
//   }
//
//   // Background state
//   static Future<void> handleMessage(RemoteMessage message) async {
//     if (!DBService().isLoggedIn() || message.data.isEmpty) return;
//
//     LogService.i(message.notification?.toMap());
//     LogService.i(message.data);
//     taskPageNavigationLogic(message.data);
//   }
//
//   // Terminated state.
//   static Future<void> getInitialNotification() async {
//     NotificationSettings settings =
//         await _firebaseMessaging.getNotificationSettings();
//     if (settings.authorizationStatus != AuthorizationStatus.authorized) return;
//
//     var initialMessage = await _firebaseMessaging.getInitialMessage();
//     if (initialMessage == null || initialMessage.data.isEmpty) return;
//     taskPageNavigationLogic(initialMessage.data);
//   }
//
//   // Terminated when notification received in foreground
//   static Future<void> getUntappedLocalNotification() async {
//     NotificationSettings settings =
//         await _firebaseMessaging.getNotificationSettings();
//     if (settings.authorizationStatus != AuthorizationStatus.authorized) return;
//     var details = await plugin.getNotificationAppLaunchDetails();
//     if (details != null && details.didNotificationLaunchApp) {
//       handleMsg(details.notificationResponse);
//     }
//   }
//
//   static Future<void> showLocalNotification(
//       RemoteNotification? notification,
//       Map<String, dynamic> notificationData,
//       AndroidNotificationChannel androidChannel) async {
//     var android = AndroidNotificationDetails(
//       androidChannel.id,
//       androidChannel.name,
//       channelDescription: androidChannel.description,
//       importance: Importance.max,
//       priority: Priority.high,
//       // largeIcon: FilePathAndroidBitmap(notificationIcon),
//     );
//     var iOS = const DarwinNotificationDetails();
//     var platform = NotificationDetails(android: android, iOS: iOS);
//     int id = Random().nextInt((pow(2, 31) - 1).toInt());
//     await plugin.show(
//       id,
//       notification?.title,
//       notification?.body,
//       platform,
//       payload: jsonEncode(notificationData),
//     );
//   }
//
//   static void taskPageNavigationLogic(Map<String, dynamic> data) {
//     // var fcmNotification = FcmNotificationData.fromJson(data);
//     // if (fcmNotification.type != NotificationType.TASK) return;
//     getUntilMainPage();
//     navigateToTaskPage();
//   }
//
//   static void getUntilMainPage() {
//     if (Get.currentRoute != "/MainPage") {
//       Get.until((route) => Get.currentRoute == '/MainPage');
//     }
//   }
//
//   static void navigateToTaskPage() {
//     var controller = Get.find<MainController>();
//     if (controller.bottomIndex == 2) return;
//     controller.pageToJump(2);
//   }
//
//
//   const FCMService._();
// }
