import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_project/config/extensions.dart';
import 'package:test_project/core/utils/app_colors.dart';

import '../../core/utils/app_assets.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyBoardType;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final bool valid;
  final Function(String text) onChanged;
  final bool obscureText;
  final String? errorText;
  final bool readOnly;
  final bool fillColor;

  const CustomTextField({
    super.key,
    required this.title,
    this.readOnly = false,
    this.fillColor = false,
    required this.hintText,
    required this.controller,
    this.inputFormatters,
    this.valid = false,
    this.keyBoardType = TextInputType.text,
    required this.onChanged,
    this.textInputAction,
    this.focusNode,
    this.errorText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.secondaryText,
          ),
        ),
        11.ph,
        Container(
          height: 60.h,
          decoration: BoxDecoration(
            color:readOnly ? Color(0xffF3F5F8) : Colors.white,
            border: Border.all(color:errorText != null
                ? AppColors.errorText
                : AppColors.greyAccent,),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Center(
            child: TextFormField(
              textAlign: TextAlign.start,
              // maxLines: null,
              // minLines: null,
              // expands: true,
              readOnly: readOnly,
              inputFormatters: inputFormatters,
              controller: controller,
              keyboardType: keyBoardType,
              focusNode: focusNode,
              textInputAction: textInputAction,
              onChanged: onChanged,
              obscureText: obscureText,
              obscuringCharacter: '●',
              style: TextStyle(fontSize: 16.sp),
              decoration: InputDecoration(
                fillColor: readOnly ? Color(0xffF3F5F8) : Colors.white,
                // filled: true,
                // Make sure to set this to true
                contentPadding:
                    EdgeInsets.only(left: 20.w, bottom: 8.h, top: 8.h),
                // focusedBorder: OutlineInputBorder(
                //   borderSide: const BorderSide(
                //     color: AppColors.darkGrey,
                //   ),
                //   borderRadius: BorderRadius.circular(10.r),
                // ),
                // enabledBorder: OutlineInputBorder(
                //   borderSide: BorderSide(
                //     color: errorText != null
                //         ? AppColors.errorText
                //         : AppColors.greyAccent,
                //   ),
                //   borderRadius: BorderRadius.circular(10.r),
                // ),
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(
                  fontSize: 16.sp,
                  color: AppColors.arrowIconColor,
                  fontWeight: FontWeight.w300,
                ),
                // suffixIcon: valid
                //     ? Padding(
                //         padding: EdgeInsets.symmetric(horizontal: 17.w),
                //         child: SvgPicture.asset(AppAssets.icons.ok),
                //       )
                //     // : errorText != null
                //     //     ? Padding(
                //     //         padding: EdgeInsets.symmetric(horizontal: 17.w),
                //     //         child: SvgPicture.asset(
                //     //           colorFilter: const ColorFilter.mode(
                //     //             AppColors.errorText,
                //     //             BlendMode.srcIn,
                //     //           ),
                //     //           AppAssets.icons.selected,
                //     //         ),
                //     //       )
                //     : null,
              ),
            ),
          ),
        ),
        Visibility(
          visible: errorText != null,
          child: Padding(
            padding: EdgeInsets.only(top: 3.h),
            child: Text(
              errorText ?? "",
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.errorText,
                height: 1.571.h
              ),
            ),
          ),
        )
      ],
    );
  }
}

class CustomTextField2 extends StatelessWidget {
  final String? title;
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyBoardType;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final bool valid;
  final Function(String text) onChanged;
  final bool obscureText;
  final bool isError;
  final String? errorText;

  const CustomTextField2({
    super.key,
    this.title,
    required this.hintText,
    required this.controller,
    this.inputFormatters,
    this.valid = false,
    this.keyBoardType = TextInputType.text,
    required this.onChanged,
    this.textInputAction,
    this.focusNode,
    this.errorText,
    this.isError = true,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        title == null
            ? Container()
            : Text(
                title!,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.secondaryText,
                ),
              ),
        11.ph,
        SizedBox(
          height: 50.h,
          child: TextField(
            inputFormatters: inputFormatters,
            controller: controller,
            keyboardType: keyBoardType,
            focusNode: focusNode,
            textInputAction: textInputAction,
            onChanged: onChanged,
            obscureText: obscureText,
            obscuringCharacter: '●',
            style: TextStyle(fontSize: 16.sp),
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.only(left: 20.w, bottom: 8.h, top: 8.h),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColors.darkGrey,
                ),
                borderRadius: BorderRadius.circular(10.r),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: errorText != null && isError == true
                      ? AppColors.errorText
                      : AppColors.greyAccent,
                ),
                borderRadius: BorderRadius.circular(10.r),
              ),
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 14.sp,
                color: AppColors.darkGrey,
                fontWeight: FontWeight.w300,
              ),
              suffixIcon: valid
                  ? Padding(
                      padding: EdgeInsets.symmetric(horizontal: 17.w),
                      child: SvgPicture.asset(AppAssets.icons.ok),
                    )
                  // : errorText != null
                  //     ? Padding(
                  //         padding: EdgeInsets.symmetric(horizontal: 17.w),
                  //         child: SvgPicture.asset(
                  //           colorFilter: const ColorFilter.mode(
                  //             AppColors.errorText,
                  //             BlendMode.srcIn,
                  //           ),
                  //           AppAssets.icons.selected,
                  //         ),
                  //       )
                  : null,
            ),
          ),
        ),
        Visibility(
          visible: errorText != null,
          child: Padding(
            padding: EdgeInsets.only(top: 3.h),
            child: Text(
              errorText ?? "",
              style: TextStyle(
                fontSize: 10.sp,
                color: isError ? AppColors.errorText : AppColors.successText,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class CustomTextField3 extends StatelessWidget {
  final String title;
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyBoardType;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final bool valid;
  final Function(String text) onChanged;
  final bool obscureText;
  final String? errorText;

  final bool readOnly;

  const CustomTextField3({
    super.key,
    required this.title,
    this.readOnly = false,
    required this.hintText,
    required this.controller,
    this.inputFormatters,
    this.valid = false,
    this.keyBoardType = TextInputType.text,
    required this.onChanged,
    this.textInputAction,
    this.focusNode,
    this.errorText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.secondaryText,
          ),
        ),
        11.ph,
        SizedBox(
          height: 50.h,
          child: TextField(
            readOnly: readOnly,
            inputFormatters: inputFormatters,
            controller: controller,
            keyboardType: keyBoardType,
            focusNode: focusNode,
            textInputAction: textInputAction,
            onChanged: onChanged,
            obscureText: obscureText,
            obscuringCharacter: '●',
            style: TextStyle(fontSize: 16.sp),
            decoration: InputDecoration(
              fillColor: readOnly ? Color(0xffF3F5F8) : Colors.white,
              filled: true,
              // Make sure to set this to true
              contentPadding:
                  EdgeInsets.only(left: 20.w, bottom: 8.h, top: 8.h),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColors.darkGrey,
                ),
                borderRadius: BorderRadius.circular(10.r),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: errorText != null
                      ? AppColors.errorText
                      : AppColors.greyAccent,
                ),
                borderRadius: BorderRadius.circular(10.r),
              ),
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 14.sp,
                color: AppColors.darkGrey,
                fontWeight: FontWeight.w300,
              ),
              suffixIcon: valid
                  ? Padding(
                      padding: EdgeInsets.symmetric(horizontal: 17.w),
                      child: SvgPicture.asset(AppAssets.icons.ok),
                    )
                  // : errorText != null
                  //     ? Padding(
                  //         padding: EdgeInsets.symmetric(horizontal: 17.w),
                  //         child: SvgPicture.asset(
                  //           colorFilter: const ColorFilter.mode(
                  //             AppColors.errorText,
                  //             BlendMode.srcIn,
                  //           ),
                  //           AppAssets.icons.selected,
                  //         ),
                  //       )
                  : null,
            ),
          ),
        ),
        // Visibility(
        //   visible: errorText != null,
        //   child: Padding(
        //     padding: EdgeInsets.only(top: 3.h),
        //     child: Container(
        //       child: Text(
        //         errorText ?? "",
        //         style: TextStyle(
        //           fontSize: 10.sp,
        //           color: AppColors.errorText,
        //           fontWeight: FontWeight.w300,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        // Visibility(
        //   visible: errorText != null,
        //   child: Container(
        //     height: 30,
        //     width: 100,
        //     color: Colors.grey.withOpacity(0.4),
        //     child: CustomPaint(
        //       foregroundPainter: Paintt(),
        //     ),
        //   ),
        // ),
        5.ph,
        Visibility(
            visible: errorText != null,
          child: FittedBox(
            child: SizedBox(
                height: 45.h,
                width: 130.w,
                child: Container(
                decoration: ShapeDecoration(
                  color: Color(0xffFF6C6C),
                  shape: MessageBorder(),
                  // shadows: [
                  //   BoxShadow(color: Colors.black, blurRadius: 3.0, offset: Offset(1, 1)),
                  // ],
                ),
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 8),
                        child: Center(
                          child: Text(
                            errorText ?? "",
                            style: TextStyle(
                              fontSize: 10.sp,
                              color: AppColors.white,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MessageBorder extends ShapeBorder {
  final bool usePadding;

  MessageBorder({this.usePadding = true});

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.only(bottom: usePadding? 20 : 0);



  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    rect = Rect.fromPoints(rect.topLeft, rect.bottomRight - Offset(0, 20));
    return Path()
      ..addRRect(RRect.fromRectAndRadius(rect, Radius.circular(rect.height / 3)))
      ..moveTo(rect.topLeft.dx +20, rect.topLeft.dy)
      ..relativeLineTo(10, -10)
      ..relativeLineTo(10, 30)

      ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) => this;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    // TODO: implement getInnerPath
    throw UnimplementedError();
  }
}