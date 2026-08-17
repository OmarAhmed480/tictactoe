import 'package:flutter/material.dart';
import 'package:tictactoe/widget/CustomDivider.dart';
import 'package:tictactoe/widget/CustomExpandedImage.dart';

class GameBoard extends StatelessWidget {
  final List<String> boardState;
  final void Function(int index) onButtonClick;

  const GameBoard({
    super.key,
    required this.boardState,
    required this.onButtonClick,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              CustomExpandedImage(
                imagePath: boardState[0],
                onTap: () {
                  onButtonClick(0);
                },
              ),
              CustomDivider(width: 1),
              CustomExpandedImage(
                imagePath: boardState[1],
                onTap: () {
                  onButtonClick(1);
                },
              ),
              CustomDivider(width: 1),
              CustomExpandedImage(
                imagePath: boardState[2],
                onTap: () {
                  onButtonClick(2);
                },
              ),
            ],
          ),
        ),

        CustomDivider(height: 1),

        Expanded(
          child: Row(
            children: [
              CustomExpandedImage(
                imagePath: boardState[3],
                onTap: () {
                  onButtonClick(3);
                },
              ),
              CustomDivider(width: 1),
              CustomExpandedImage(
                imagePath: boardState[4],
                onTap: () {
                  onButtonClick(4);
                },
              ),
              CustomDivider(width: 1),
              CustomExpandedImage(
                imagePath: boardState[5],
                onTap: () {
                  onButtonClick(5);
                },
              ),
            ],
          ),
        ),

        CustomDivider(height: 1),

        Expanded(
          child: Row(
            children: [
              CustomExpandedImage(
                imagePath: boardState[6],
                onTap: () {
                  onButtonClick(6);
                },
              ),
              CustomDivider(width: 1),
              CustomExpandedImage(
                imagePath: boardState[7],
                onTap: () {
                  onButtonClick(7);
                },
              ),
              CustomDivider(width: 1),
              CustomExpandedImage(
                imagePath: boardState[8],
                onTap: () {
                  onButtonClick(8);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}