// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../utils/app_colors.dart';
//
// class ToastService {
//   static showMessage(String? text) {
//     if (Get.isSnackbarOpen) Get.closeCurrentSnackbar();
//     Get.snackbar(
//       '',
//       '',
//       duration: const Duration(milliseconds: 1300),
//       titleText: const SizedBox.shrink(),
//       snackPosition: SnackPosition.BOTTOM,
//       backgroundColor: Colors.transparent,
//       barBlur: 0,
//       overlayBlur: 0,
//       borderRadius: 0,
//       margin: EdgeInsets.symmetric(vertical: 60.h, horizontal: 20.w),
//       animationDuration: const Duration(milliseconds: 500),
//       shouldIconPulse: true,
//       messageText: Container(
//         constraints: BoxConstraints(minHeight: 60.h),
//         alignment: Alignment.center,
//         margin: EdgeInsets.symmetric(horizontal: 4.w, vertical: 0),
//         padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
//         decoration: BoxDecoration(
//             color: const Color(0xFF303030),
//             borderRadius: BorderRadius.circular(15.r)),
//         child: Text(
//           text ?? '',
//           textAlign: TextAlign.center,
//           style: TextStyle(
//               fontSize: 15.sp,
//               color: Colors.white,
//               letterSpacing: 0,
//               fontWeight: FontWeight.w400),
//         ),
//       ),
//     );
//   }
//
//   static openAlertBox(
//       {required BuildContext context,
//       required String title,
//       required String body,
//       required String buttonText,
//       required Function()? onPressed}) {
//
//
//     return showDialog(
//       barrierDismissible: false,
//         barrierColor: Color.fromRGBO(0, 0, 0, 0.7),
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(32.r))),
//             contentPadding: EdgeInsets.zero,
//             insetPadding:EdgeInsets.zero,
//             titlePadding:EdgeInsets.zero,
//             content: Container(
//
//               width: 350.w,
//               height: 240.h,
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(32.r)
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   59.ph,
//                   Text(
//                     title,
//                     style:
//                         TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
//                   ),
//                   20.ph,
//                   Text(
//                     body,
//                     style: TextStyle(
//                       fontSize: 16.sp,
//                     ),textAlign: TextAlign.center,
//                   ),
//                   Spacer(),
//                   InkWell(
//                     onTap: onPressed,
//                     child: Container(
//                       width: double.infinity,
//                       padding: EdgeInsets.only(top: 20.0.w, bottom: 20.w),
//                       decoration: BoxDecoration(
//                         color: AppColors.splash,
//                         borderRadius: BorderRadius.only(
//                             bottomLeft: Radius.circular(32.r),
//                             bottomRight: Radius.circular(32.r)),
//                       ),
//                       child: Text(
//                         buttonText,
//                         style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w600),
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         });
//     //     .then((value)  {    Get.until((route) => Get.currentRoute == '/PaymentDetailPage');
//     // Get.back();
//     // Get.back();
//     // ToastService.showMessage("취소 요청 완료되었습니다");});
//   }
//
//   static openAlertBoxWithTwoButton(
//       {required BuildContext context,
//       required String title,
//       required String body,
//       required String buttonText,
//       required Function()? onPressed}) {
//     return showDialog(
//         context: context,
//         barrierColor: Color.fromRGBO(0, 0, 0, 0.7),
//         builder: (BuildContext context) {
//           return AlertDialog(
//             backgroundColor: Colors.white,
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(32.r))),
//             contentPadding: EdgeInsets.zero,
//             insetPadding:EdgeInsets.zero,
//             titlePadding:EdgeInsets.zero,
//             content: Container(
//               height: 212.h,
//               width: 350.w,
//               //
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(32.r)
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   59.ph,
//                   Text(
//                     title,
//                     style:
//                         TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
//                   ),
//                   10.ph,
//                   Text(
//                     body,
//                     style: TextStyle(
//                       fontSize: 16.sp,
//                     ),
//                   ),
//
//                   Row(
//                     // mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       30.pw,
//                       InkWell(
//                         onTap: () {
//                           Get.back();
//                         },
//                         child: Container(
//                            width: 135.w,
//                           height: 50.h,
//                           decoration: BoxDecoration(
//                               color: Color(0xffF6F6F6),
//                               borderRadius: BorderRadius.circular(8.r)),
//                           child: Center(child: Text("취소",style: TextStyle(fontSize: 16.sp,color: AppColors.darkGrey,fontWeight: FontWeight.w600),)),
//                         ),
//                       ),
//                       10.pw,
//                       GestureDetector(
//                         onTap: onPressed,
//                         child: Container(
//                           width: 135.w,
//                           height: 50.h,
//                           decoration: BoxDecoration(
//                               color: AppColors.activeBoxColor,
//                               borderRadius: BorderRadius.circular(8.r)),
//                           child: Center(child: Text(buttonText,style: TextStyle(fontSize: 16.sp,color: AppColors.splash,fontWeight: FontWeight.w600),)),
//                         ),
//                       ),
//                       30.pw,
//                     ],
//                   )
//                   // Spacer(),
//                   // InkWell(
//                   //   onTap:onPressed,
//                   //   child: Container(
//                   //     width: double.infinity,
//                   //     padding: EdgeInsets.only(top: 20.0.w, bottom: 20.w),
//                   //     decoration: BoxDecoration(
//                   //       color: AppColors.splash,
//                   //       borderRadius: BorderRadius.only(
//                   //           bottomLeft: Radius.circular(32.r),
//                   //           bottomRight: Radius.circular(32.r)),
//                   //     ),
//                   //     child: Text(
//                   //       buttonText,
//                   //       style: TextStyle(color: Colors.white),
//                   //       textAlign: TextAlign.center,
//                   //     ),
//                   //   ),
//                   // ),
//                 ],
//               ),
//             ),
//           );
//         });
//   }
//
//   static show(
//     String title,
//     String message, {
//     Color? backgroundColor,
//     Color? colorText,
//     Color? borderColor,
//     Widget? icon,
//   }) {
//     if (Get.isSnackbarOpen) {
//       Get.closeCurrentSnackbar();
//     }
//     Get.snackbar(
//       title,
//       message,
//       reverseAnimationCurve: Curves.linear,
//       animationDuration: const Duration(milliseconds: 500),
//       duration: const Duration(seconds: 5),
//       backgroundColor: backgroundColor ?? Colors.amberAccent,
//       colorText: colorText ?? AppColors.black,
//       borderColor: borderColor,
//       borderWidth: 1,
//       icon: icon,
//     );
//   }
// }
