
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tictactoe/utils/app_assets.dart';

class GoesFirst extends StatelessWidget {
GoesFirst({super.key,required this.onTapO,required this.onTapX});
VoidCallback onTapO;
VoidCallback onTapX;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: onTapX,
              child: Container(
                height: 164.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Image.asset(AppAssets.xImages,height: 68.h,width: 68.w,),
              ),
            ),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: InkWell(
              onTap: onTapO,
              child: Container(
                height: 164.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Image.asset(AppAssets.oImages,height: 68.h,width: 68.w,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
