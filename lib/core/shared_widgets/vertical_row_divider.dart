import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class VerticalRowDivider extends StatelessWidget {
  const VerticalRowDivider({super.key, this.height = 18, this.color = const Color(0xff656565), this.width = 2});

  final double? height;
  final Color? color;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height?.h,
      color:  color,
      child: SizedBox(
        width: width,
      ),
    );
  }
}