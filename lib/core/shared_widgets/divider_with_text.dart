import 'package:flutter/material.dart';
import 'package:social_mate/core/theme/app_colors.dart';
import 'package:social_mate/core/theme/app_text_styles.dart';

class DividerWithText extends StatelessWidget {
  const DividerWithText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Divider(
          color: AppColors.black,
          thickness: 2,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          text,
          style: AppTextStyles(AppColors.black).f16Regular,
        ),
      ),
      Expanded(
        child: Divider(
          color: AppColors.black,
          thickness: 2,
        ),
      )
    ],);
  }
}