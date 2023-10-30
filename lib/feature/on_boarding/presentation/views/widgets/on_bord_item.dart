import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:on_board/feature/on_boarding/data/model/on_board_model.dart';

class OnBoardItem extends StatelessWidget {
  const OnBoardItem({super.key, required this.onBoard});

  final OnBoardModel onBoard;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          onBoard.image,
          width: 150,
          height: 150,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          onBoard.title,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
