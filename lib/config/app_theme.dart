import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/utils/app_colors.dart';

class AppTheme {
  static var appTheme = ThemeData(    useMaterial3: false,
    dialogBackgroundColor:   Color.fromRGBO(0, 0, 0, 0.7),
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    // splashColor: AppColors.splashGradient2.withOpacity(0.05),
    fontFamily: 'Pretendard',
    scaffoldBackgroundColor: AppColors.white,
    colorScheme: ColorScheme.light(

    ),
    inputDecorationTheme: const InputDecorationTheme(
        hintStyle: TextStyle(
            color: AppColors.appBarIcon,
            fontWeight: FontWeight.w400,
            fontFamily: 'Pretendard')),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.white,
      iconTheme: const IconThemeData(color: AppColors.appBarIcon),
      elevation: 0,
      centerTitle: true,
      foregroundColor: AppColors.white,
      titleTextStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20.sp,
          letterSpacing: 0.5,
          color: AppColors.black),
    ),
  );
}
