import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:social_mate/core/theme/app_colors.dart';

class InputField extends StatefulWidget {
   InputField({super.key, this.controller ,required this.hint, required this.label, this.isObsecureText = false, this.isPassword = false, this.validator});
  final String hint;
  final String label;
  final TextEditingController? controller;
  bool isObsecureText;
  bool isPassword;
  String? Function(String?)? validator;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.isObsecureText,
      validator: widget.validator,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword?
        
        IconButton(onPressed: (){
          setState(() {
            widget.isObsecureText != widget.isObsecureText;
          });
        }, icon: widget.isObsecureText? 
        Icon(Icons.visibility_outlined): 
        Icon(Icons.visibility_off_outlined)):
         null,
        hintText: widget.hint,
        labelText: widget.label,
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