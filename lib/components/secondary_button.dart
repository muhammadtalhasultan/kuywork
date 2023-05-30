// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config/constants.dart';

class SecondaryButton extends StatelessWidget {
  final String title;
  Function()? onPressed;
  bool autofocus;
  SecondaryButton(
      {super.key,
      required this.title,
      required this.onPressed,
      this.autofocus = false});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          padding: EdgeInsets.symmetric(vertical: 10.h),
          backgroundColor: accentColor,
          elevation: 0),
      onPressed: onPressed,
      autofocus: autofocus,
      child: Text(
        title,
        style: GoogleFonts.poppins(
            color: kLightPrimaryColor,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
