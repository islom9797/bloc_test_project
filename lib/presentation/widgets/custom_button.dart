import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  /// default state: [Active]
  final bool isActive;
  final void Function()? onPressed;
  final String text;
  // final FontWeight? fontWeight;

  /// default color: [AppColors.button]
  final Color? backgroundColor;

  /// default color: [AppColors.buttonText],
  final Color? textColor;

  /// Margin around the button
  final EdgeInsetsGeometry? margin;
  final double verticalPadding;

  /// Icon before Text
  final Widget? prefixIcon;

  final IconData? suffixIcon;

  /// default color: [Colors.white],
  final Color? suffixIconColor;

  final double borderRadius;
  final double fontSize;

  const CustomButton({
    required this.onPressed,
    required this.text,
    this.isActive = true,
    this.backgroundColor,
    this.textColor,
    // this.fontWeight = FontWeight.bold,
    this.margin,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixIconColor,
    this.verticalPadding = 15,
    super.key,
    this.borderRadius = 5,
    this.fontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? const EdgeInsets.all(0),
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 350),
        child: CupertinoButton(
          key: ValueKey(isActive),
          disabledColor: AppColors.grey3,
          onPressed: isActive ? onPressed : null,
          borderRadius: BorderRadius.circular(10.r),
          color: backgroundColor ?? AppColors.button,
          padding: EdgeInsets.zero,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 15.w, vertical: verticalPadding.h),
            child: SizedBox(
              height: 30.h,
              width: 1.sw,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Prefix Icon
                  if (prefixIcon != null)
                    Align(alignment: Alignment.centerLeft, child: prefixIcon!),

                  FittedBox(
                    child: Text(
                      text,
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: fontSize.sp,
                          color: textColor ?? AppColors.white,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.3),
                    ),
                  ),

                  // Suffix Icon
                  if (suffixIcon != null)
                    Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        suffixIcon!,
                        color: suffixIconColor,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
