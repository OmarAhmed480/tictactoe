import 'package:flutter/material.dart';
import 'app_color.dart';

class AppStyle {
  AppStyle._();
  static const TextStyle bold36whiteColor = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w700,
    color:AppColors.whiteColor,
  );

  static const TextStyle medium16whiteColor = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color:AppColors.whiteColor,
  );
  static const TextStyle semibold32blackColor = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    color:Colors.black,
  );

}
