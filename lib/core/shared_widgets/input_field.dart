import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:social_mate/core/theme/app_colors.dart';

class InputField extends StatelessWidget {
  const InputField({super.key, this.controller ,required this.hint, required this.label});
  final String hint;
  final String label;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintStyle: TextStyle(
          fontSize: 18,
          color: Color(0xff8C8F90).withOpacity(0.6)
        ),
        floatingLabelStyle: TextStyle(
          color: Color(0xff4E5558),
          fontSize: 18
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
        
          borderSide: BorderSide(
            color: AppColors.hintColor,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
        
          borderSide: BorderSide(
            color: AppColors.hintColor,

          ),
          

        )
      ),
    );
  }
}