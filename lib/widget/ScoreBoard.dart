import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tictactoe/model/GameBoardArgs.dart';
import 'package:tictactoe/utils/app_Style.dart';
import 'package:tictactoe/utils/app_assets.dart';
import 'package:tictactoe/utils/app_color.dart';
import 'package:tictactoe/widget/CustomDivider.dart';

class ScoreBoard extends StatelessWidget {
  final int playerScore1;
  final int playerScore2;
  final GameBoardArgs args;

  const ScoreBoard({
    super.key,
    required this.playerScore1,
    required this.playerScore2,
    required this.args,
  });

  @override
  Widget build(BuildContext context) {
    final String player1Symbol = args.player1Symbol == AppAssets.xImages
        ? "X"
        : "O";
    final String player2Symbol = args.player2Symbol == AppAssets.xImages
        ? "X"
        : "O";
    return Padding(
      padding: REdgeInsets.symmetric(vertical: 15.h),
      child: Container(
        alignment: Alignment.center,
        height: 76.h,
        width: 343.w,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(44.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: REdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
              child: Column(
                children: [
                  Text(
                    "Player 1 ($player1Symbol)",
                    style: AppStyle.semibold32blackColor.copyWith(
                      fontSize: 15.sp,
                    ),
                  ),
                  Text(
                    "Score: $playerScore1",
                    style: AppStyle.semibold32blackColor.copyWith(
                      fontSize: 15.sp,
                    ),
                  ),
                ],
              ),
            ),

            CustomDivider(width: 2),

            Padding(
              padding: REdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
              child: Column(
                children: [
                  Text(
                    "Player 2 ($player2Symbol)",
                    style: AppStyle.semibold32blackColor.copyWith(
                      fontSize: 15.sp,
                    ),
                  ),
                  Text(
                    "Score: $playerScore2",
                    style: AppStyle.semibold32blackColor.copyWith(
                      fontSize: 15.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
