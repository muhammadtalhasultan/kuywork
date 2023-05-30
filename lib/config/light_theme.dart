import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '/config/pallete.dart';
import 'constants.dart';

ThemeData lightTheme = ThemeData(
  primarySwatch: Palette.kToColor,
  brightness: Brightness.light,
  scaffoldBackgroundColor: kLightScaffoldColor,
  disabledColor: const Color(0xFFC4C9D6),
  primaryColorDark: kDarkPrimaryColor,
  primaryColorLight: kLightPrimaryColor,
  primaryColor: kLightPrimaryColor,
  shadowColor: kLightSecondaryColor,
  cardColor: kLightCardColor,
  navigationBarTheme:
      const NavigationBarThemeData(backgroundColor: Colors.transparent),
  bottomSheetTheme:
      const BottomSheetThemeData(backgroundColor: whiteColor, elevation: 5),
  iconTheme: const IconThemeData(
    color: kLightPrimaryColor,
  ),
  appBarTheme: AppBarTheme(
      //centerTitle: true,
      titleTextStyle: GoogleFonts.poppins(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: kLightPrimaryColor,
      ),
      backgroundColor: accentColor,
      iconTheme: const IconThemeData(color: kLightPrimaryColor)),
  dividerTheme: DividerThemeData(
    color: const Color(0xFFF4F3F8),
    thickness: 1.sp,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: whiteColor,
      selectedItemColor: accentColor,
      unselectedItemColor: kLightPrimaryColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 10),
  inputDecorationTheme: InputDecorationTheme(
      hintStyle: GoogleFonts.poppins(
        fontSize: 13.sp,
        fontWeight: FontWeight.w400,
        color: kLightPrimaryColor,
      ),
      filled: true,
      fillColor: kLightFillColor,
      focusColor: accentColor,
      border: kBorder,
      enabledBorder: kBorder,
      focusedBorder: kBorder,
      contentPadding: REdgeInsets.all(14)),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(5),
      minimumSize: MaterialStateProperty.all(
        Size(double.infinity, 40.h),
      ),
      shape: MaterialStateProperty.all(
        const StadiumBorder(),
      ),
      foregroundColor: MaterialStateProperty.all(
        kLightPrimaryColor,
      ),
      backgroundColor: MaterialStateProperty.all(
        accentColor,
      ),
      textStyle: MaterialStateProperty.all(
        GoogleFonts.poppins(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: kLightPrimaryColor,
        ),
      ),
    ),
  ),
  textTheme: TextTheme(
    headlineLarge: GoogleFonts.poppins(
      fontSize: 28.sp,
      fontWeight: FontWeight.w500,
      color: kLightPrimaryColor,
    ),
    headlineMedium: GoogleFonts.poppins(
      fontSize: 18.sp,
      fontWeight: FontWeight.w500,
      color: kLightPrimaryColor,
    ),
    headlineSmall: GoogleFonts.poppins(
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      color: kLightPrimaryColor,
    ),
    titleLarge: GoogleFonts.poppins(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      color: kLightPrimaryColor,
    ),
    titleMedium: GoogleFonts.poppins(
      fontSize: 13.sp,
      fontWeight: FontWeight.w400,
      color: kLightPrimaryColor,
    ),
    titleSmall: GoogleFonts.poppins(
      fontSize: 13.sp,
      fontWeight: FontWeight.w400,
      color: bodyTextColor,
    ),
  ),
);
