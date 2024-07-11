// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:healthcheckhere/data/database/db_service.dart';
// import 'package:healthcheckhere/domain/entities/user/user_model.dart';
// import 'package:healthcheckhere/presentation/pages/reservation_step_3/reservation_step_3_controller.dart';
// import 'package:intl/intl.dart';
//
// import '../../presentation/pages/login/login_page.dart';
//
// TextStyle defaultBoldTextStyle14 =TextStyle(fontSize: 14.sp, height: 1.571.h, fontWeight: FontWeight.w600);///22/14
// TextStyle defaultTextStyle14 = TextStyle(fontSize: 14.sp, height: 1.571.h);///22/14
// TextStyle defaultTextStyle14s = TextStyle(fontSize: 14.sp, height: 1.71.h);///24/14
//
// TextStyle boldTextStyle16 =TextStyle(fontSize: 16.sp, height: 1.375.h, fontWeight: FontWeight.w600);///22/16
// TextStyle boldTextStyle16s =TextStyle(fontSize: 16.sp, height: 1.375.h, fontWeight: FontWeight.w600);///2/16
// TextStyle defaultTextStyle16 =TextStyle(fontSize: 16.sp, height: 1.375.h);///22/16
// TextStyle defaultTextStyle16s =TextStyle(fontSize: 16.sp, height: 1.5.h);///24/16
//
// TextStyle boldTextStyle18 =TextStyle(fontSize: 18.sp, height: 1.333.h, fontWeight: FontWeight.w600);///24/18
// TextStyle boldTextStyle22=TextStyle(fontSize: 22.sp, height: 1.09.h, fontWeight: FontWeight.w600);///24/22
//
// class StaticFields {
//   static bool isB2B = false;
//   static List<BoxShadow> boxShadows = [
//     // BoxShadow(
//     // color: Colors.grey.withOpacity(0.5),
//     // // Set shadow color and opacity
//     // blurRadius: 10.0,
//     // // Adjust blur amount
//     // spreadRadius: -3,
//     // // Optional: adjust for outward shadow effect
//     // offset: Offset(0.0, 0.0),
//     // )
//     BoxShadow(
//       color: Color.fromRGBO(0, 0, 0, 0.07),
//       offset: Offset(0, 7),
//       blurRadius: 15,
//       spreadRadius: 0,
//     ),
//   ];
//
//   static List<BoxShadow> boxShadows2 = [
//     BoxShadow(
//         offset: Offset(0.0, 3.0),
//         blurRadius: 3.0,
//         spreadRadius: -2.0,
//         color: Color.fromRGBO(0, 0, 0, 0.08)),
//     BoxShadow(
//         offset: Offset(0.0, 3.0),
//         blurRadius: 4.0,
//         color: Color.fromRGBO(0, 0, 0, 0.08)),
//     BoxShadow(
//         offset: Offset(0.0, 1.0),
//         blurRadius: 8.0,
//         color: Color.fromRGBO(0, 0, 0, 0.08)),
//   ];
//
//   // static SnsLoginData? snsLoginData;
//   static String pushCount = "0";
//   static TextStyle boldTextStyle =
//       TextStyle(fontWeight: FontWeight.w700, fontSize: 16.sp);
//
//   static bool isUsageExpired = true;
//
//   static logOut() async {
//     Get.offAll(() => LoginPage());
//     DBService.to.logOut();
//   }
// }
//
// String formatPrice(double price) {
//   final formatter = NumberFormat("#,##0", "ko_KR");
//   return formatter.format(price);
// }
//
// String formatDate(DateTime dateTime) {
//   String formattedDate = DateFormat('yyyy년 MM월 dd일').format(dateTime);
//   return formattedDate;
// }
//
// String formatDateWithDayOfWeek(String time) {
//   String realTime =
//       Get.find<ReservationStep3Controller>().convertDateTime(time);
// // Create a DateTime object for the date you want to check
//   DateTime date = DateFormat("dd.MM.yyyy").parse(time);
//   // Get the day of the week
//   int dayOfWeek = date.weekday;
//
//   // Map the integer value to the name of the day
//   String dayName;
//   switch (dayOfWeek) {
//     case DateTime.monday:
//       dayName = '월';
//       break;
//     case DateTime.tuesday:
//       dayName = '화';
//       break;
//     case DateTime.wednesday:
//       dayName = '수';
//       break;
//     case DateTime.thursday:
//       dayName = '목';
//       break;
//     case DateTime.friday:
//       dayName = '금';
//       break;
//     case DateTime.saturday:
//       dayName = '토';
//       break;
//     case DateTime.sunday:
//       dayName = '일';
//       break;
//     default:
//       dayName = 'Unknown';
//   }
//
//   return "${realTime}($dayName)";
// }
//
// String formatDateWithDayOfWeek2(String time) {
//   // String realTime=Get.find<ReservationStep3Controller>().convertDateTime(time);
// // Create a DateTime object for the date you want to check
//   DateTime date = DateFormat("dd.MM.yyyy").parse(time);
//   // Get the day of the week
//   int dayOfWeek = date.weekday;
//
//   // Map the integer value to the name of the day
//   String dayName;
//   switch (dayOfWeek) {
//     case DateTime.monday:
//       dayName = '월';
//       break;
//     case DateTime.tuesday:
//       dayName = '화';
//       break;
//     case DateTime.wednesday:
//       dayName = '수';
//       break;
//     case DateTime.thursday:
//       dayName = '목';
//       break;
//     case DateTime.friday:
//       dayName = '금';
//       break;
//     case DateTime.saturday:
//       dayName = '토';
//       break;
//     case DateTime.sunday:
//       dayName = '일';
//       break;
//     default:
//       dayName = 'Unknown';
//   }
//
//   return "${time}($dayName)";
// }
