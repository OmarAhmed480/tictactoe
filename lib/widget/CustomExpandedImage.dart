import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomExpandedImage extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;
  // final int index;
  const CustomExpandedImage({
    super.key,
    required this.imagePath,
    required this.onTap,
    // required this. index,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: imagePath.isEmpty
            ?  Container()
            : Padding(
                padding: REdgeInsets.all(15),
                child: Image.asset(imagePath, fit: BoxFit.fill),
              ),
      ),
    );
  }
}
