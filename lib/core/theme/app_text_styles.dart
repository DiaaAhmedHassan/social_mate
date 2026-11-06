import 'package:flutter/material.dart';

class AppTextStyles {
  Color color;
  AppTextStyles(this.color);

  TextStyle get f18Heavy  => TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: color
  );
  TextStyle get f16Light  => TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: color
  );
  TextStyle get f24Light  => TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: color
  );
  TextStyle get f18Regular  => TextStyle(
    fontSize: 18,
    color: color
  );
  TextStyle get f16Regular  => TextStyle(
    fontSize: 16,
    color: color
  );
  TextStyle get f14Medium  => TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: color
  );


}