import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tictactoe/model/GameBoardArgs.dart';
import 'package:tictactoe/utils/app_Style.dart';
import 'package:tictactoe/utils/app_assets.dart';
import 'package:tictactoe/utils/app_color.dart';
import 'package:tictactoe/utils/app_route.dart';
import 'package:tictactoe/widget/goes_First.dart';

class Splashscreen extends StatefulWidget {
  Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blueColor,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 516.h,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF00D2FF), Color(0xFF3A7BD5)],
              ),
              image: DecorationImage(
                image: AssetImage(AppAssets.xoImages),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text("Pick who goes first?", style: AppStyle.medium16whiteColor),
          GoesFirst(
            onTapO: () {
              Navigator.pushNamed(
                context,
                AppRoute.homeRouteName,
                arguments:GameBoardArgs(
                    player1Symbol:AppAssets.oImages,
                    player2Symbol: AppAssets.xImages),
              );
            },
            onTapX: () {
              Navigator.pushNamed(
                context,
                AppRoute.homeRouteName,
                arguments:GameBoardArgs(
                    player1Symbol:AppAssets.xImages,
                    player2Symbol: AppAssets.oImages),
              );
            },
          ),
        ],
      ),
    );
  }
}
