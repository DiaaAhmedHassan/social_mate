import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class VerticalSpacer extends StatelessWidget {
  const VerticalSpacer(this.height ,{super.key});
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height.h,);
  }
}

class HorizontalSpacer extends StatelessWidget {
  const HorizontalSpacer(this.width ,{super.key});
  final double width;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(width: width,);
  }
}