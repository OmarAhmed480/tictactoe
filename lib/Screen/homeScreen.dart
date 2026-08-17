import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tictactoe/model/GameBoardArgs.dart';
import 'package:tictactoe/utils/app_Style.dart';

import 'package:tictactoe/utils/app_color.dart';
import 'package:tictactoe/widget/GameBoard.dart';
import 'package:tictactoe/widget/ScoreBoard.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> boardState = ["", "", "", "", "", "", "", "", ""];
  int playerScore1 = 0;
  int playerScore2 = 0;
  String title = "Player 1’s Turn";

  @override
  Widget build(BuildContext context) {
    GameBoardArgs args =
        ModalRoute.of(context)!.settings.arguments as GameBoardArgs;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF00D2FF), Color(0xFF3A7BD5)],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              ScoreBoard(
                args: args,
                playerScore1: playerScore1,
                playerScore2: playerScore2,
              ),
              Text(title, style: AppStyle.bold36whiteColor),
              Padding(
                padding: REdgeInsets.symmetric(horizontal: 16.w, vertical:15.h),
                child: Container(
                  height: 550.h,
                  width: 343.w,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.circular(40.r),
                  ),
                  child: Padding(
                    padding: REdgeInsets.all(16),
                    child: GameBoard(
                      boardState: boardState,
                      onButtonClick: (index) {
                        onButtonClick(index: index, args: args);
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  int count = 0;
  void onButtonClick({required int index, required GameBoardArgs args}) {
    if (boardState[index].isNotEmpty) {
      return;
    }
    final String currentPlayer = count % 2 == 0
        ? args.player1Symbol
        : args.player2Symbol;
    setState(() {
      boardState[index] = currentPlayer;
      count++;
      if (checkWinner(imagePath: currentPlayer)) {
        if (currentPlayer == args.player1Symbol) {
          title = "Player 1 Wins!";
          playerScore1++;
        } else {
          title = "Player 2 Wins!";
          playerScore2++;
        }
        Timer(const Duration(seconds: 1), () {
          initBoard();
        });
      } else if (count == 9) {
        title = "None of Player’s Turn";
        Timer(const Duration(seconds: 1), () {
          initBoard();
        });
      } else {
        title = count % 2 == 0 ? "Player 1’s Turn" : "Player 2’s Turn";
      }
    });
  }
  void initBoard() {
    setState(() {
      boardState = ["", "", "", "", "", "", "", "", ""];
      count = 0;
      title = "Player 1’s Turn";
    });
  }

  bool checkWinner({required String imagePath}) {
    // Rows
    for (int i = 0; i < 9; i += 3) {
      if (boardState[i] == imagePath &&
          boardState[i + 1] == imagePath &&
          boardState[i + 2] == imagePath) {
        return true;
      }
    }

    // Columns
    for (int i = 0; i < 3; i++) {
      if (boardState[i] == imagePath &&
          boardState[i + 3] == imagePath &&
          boardState[i + 6] == imagePath) {
        return true;
      }
    }

    // Diagonal 0 → 4 → 8
    if (boardState[0] == imagePath &&
        boardState[4] == imagePath &&
        boardState[8] == imagePath) {
      return true;
    }

    // Diagonal 2 → 4 → 6
    if (boardState[2] == imagePath &&
        boardState[4] == imagePath &&
        boardState[6] == imagePath) {
      return true;
    }

    return false;
  }
}
