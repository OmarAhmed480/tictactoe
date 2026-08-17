import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  CustomDivider({
    super.key,
    this.width = double.infinity,
    this.height = double.infinity,
  });

  double width;
  double height;

  @override
  Widget build(BuildContext context) {
    return Container(width: width, height: height, color: Colors.black);
  }
}
