import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '/config/pallete.dart';
import 'constants.dart';

ThemeData darkTheme = ThemeData(
  primarySwatch: Palette.kToColor,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: kDarkScaffoldColor,
  disabledColor: const Color(0xFFC4C9D6),
  primaryColorDark: kDarkPrimaryColor,
  primaryColorLight: kLightPrimaryColor,
  primaryColor: kDarkPrimaryColor,
  shadowColor: kDarkSecondaryColor,
  cardColor: kDarkCardColor,
  iconTheme: const IconThemeData(
    color: kDarkPrimaryColor,
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
  navigationBarTheme:
      const NavigationBarThemeData(backgroundColor: Colors.transparent),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: kDarkCardColor,
      selectedItemColor: accentColor,
      unselectedItemColor: kDarkPrimaryColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 10),
  inputDecorationTheme: InputDecorationTheme(
      hintStyle: GoogleFonts.poppins(
        fontSize: 13.sp,
        fontWeight: FontWeight.w400,
        color: kDarkPrimaryColor,
      ),
      filled: true,
      fillColor: kDarkFillColor,
      focusColor: accentColor,
      border: kBorder,
      enabledBorder: kBorder,
      focusedBorder: kBorder,
      contentPadding: REdgeInsets.all(14)),
  dividerTheme: DividerThemeData(
    color: const Color(0xFF1A1A1A),
    thickness: 1.sp,
  ),
  bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Color(0xFF1E1E1E), elevation: 5),
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
          color: kDarkPrimaryColor,
        ),
      ),
    ),
  ),
  textTheme: TextTheme(
    headlineLarge: GoogleFonts.poppins(
      fontSize: 28.sp,
      fontWeight: FontWeight.w500,
      color: kDarkPrimaryColor,
    ),
    headlineMedium: GoogleFonts.poppins(
      fontSize: 18.sp,
      fontWeight: FontWeight.w500,
      color: kDarkPrimaryColor,
    ),
    headlineSmall: GoogleFonts.poppins(
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      color: kDarkPrimaryColor,
    ),
    titleLarge: GoogleFonts.poppins(
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
      color: kDarkPrimaryColor,
    ),
    titleMedium: GoogleFonts.poppins(
      fontSize: 13.sp,
      fontWeight: FontWeight.w400,
      color: kDarkPrimaryColor,
    ),
    titleSmall: GoogleFonts.poppins(
      fontSize: 13.sp,
      fontWeight: FontWeight.w400,
      color: kDarkBodyTextColor,
    ),
  ),
);
