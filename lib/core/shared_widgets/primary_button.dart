import 'package:flutter/material.dart';
import 'package:social_mate/core/theme/app_colors.dart';
import 'package:social_mate/core/theme/app_text_styles.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.backgroundColor = AppColors.primary,
    this.foregroundColor = AppColors.white,
    required this.label,
    required this.onPressed,
    this.width=double.infinity, 
    this.padding=10,
    this.borderRadius=10
  });
  final Color backgroundColor;
  final Color foregroundColor;
  final double width;
  final double padding;
  final String label;
  final void Function() onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,

      child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: padding),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius)
        )
      ),  
      onPressed: onPressed, 
      child: Text(label, style: AppTextStyles(foregroundColor).f18Regular,)),
    );
  }
}
