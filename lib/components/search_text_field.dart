// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTextFormField extends StatelessWidget {
  final TextEditingController? textControllor;
  final String? hintText;
  final String? initialValue;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool readOnly;
  final bool? showCursor;
  void Function()? onTap;
  final String? Function(String?)? validator;
  void Function(String?)? onSaved;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final void Function(String)? onChanged;
  final void Function()? onEditingComplete;
  final void Function(String)? onFieldSubmitted;
  

  SearchTextFormField(
      {super.key,
      this.textControllor,
      this.hintText,
      this.initialValue,
      this.keyboardType,
      this.textInputAction,
      this.showCursor,
      this.onTap,
      this.validator,
      this.onSaved,
      this.prefixIcon,
      this.suffixIcon,
      this.obscureText = false,
      this.readOnly = false,
      this.onChanged,
      this.onEditingComplete,
      this.onFieldSubmitted,
     });
 final kBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16.r),
    borderSide: const BorderSide(color: Colors.transparent, width: 0));
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textControllor,
      decoration: InputDecoration(
        hintStyle: Theme.of(context).textTheme.titleSmall,
        prefixIcon: Padding(
           padding: REdgeInsets.symmetric(vertical: 17.h, horizontal: 14.w),
          child: prefixIcon,
        ),
        filled: true,
        fillColor: Theme.of(context).shadowColor,
        hintText: hintText,
        suffixIcon: suffixIcon,
        border: kBorder,
        enabledBorder: kBorder,
        focusedBorder: kBorder
      ),
      style: Theme.of(context).textTheme.titleMedium!.copyWith(
        fontSize: 14.sp
      ),
      initialValue: initialValue,
      obscureText: obscureText,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      readOnly: readOnly,
      showCursor: showCursor,
      onTap: onTap,
      validator: validator,
      onSaved: onSaved,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onFieldSubmitted: onFieldSubmitted,
      
    );
  }
}
