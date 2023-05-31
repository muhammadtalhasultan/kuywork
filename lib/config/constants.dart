import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const Color kLightScaffoldColor= Color(0xFFF4F3F8);
const Color kDarkScaffoldColor= Color(0xFF1A1A1A);
const Color kLightPrimaryColor= Color(0xFF1E1E1E);
const Color kDarkPrimaryColor= Color(0xFFFFFFFF);
const Color kDarkCardColor= Color(0xFF1F1F1F);
const Color kLightCardColor= Color(0xFFFFFFFF);
const Color kLightSecondaryColor= Color(0xFFF5F4F4);
const Color kDarkSecondaryColor= Color(0xFF333333);
const Color kLightTextFieldColor= Color(0xFFFFFFFF);
const Color kDarkTextFieldColor= Color(0xFF1F1F1F);
const Color kLightFillColor = Color(0xFFF4F3F8);
const Color kDarkFillColor = Color(0xFF1A1A1A);
const Color whiteColor= Color(0xFFFFFFFF);
const Color accentColor= Color(0xFFFFB74D);
const Color kLightBodyTextColor= Color(0xFF696969);
const Color kDarkBodyTextColor= Color(0xFFF5F5F5);

final kBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.r),
    borderSide: const BorderSide(color: Colors.transparent, width: 0));


   bool status= false;
    saveUnsave(bool status){
        status= !status;
    }
    
