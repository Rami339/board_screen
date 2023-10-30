import 'package:flutter/material.dart';
import 'package:on_board/feature/on_boarding/presentation/views/widgets/on_board_body.dart';

class OnBoardHome extends StatefulWidget {
  const OnBoardHome({super.key});

  @override
  State<OnBoardHome> createState() => _OnBoardHomeState();
}

class _OnBoardHomeState extends State<OnBoardHome> {
  @override
  Widget build(BuildContext context) {
    return const OnBoardBody();
  }
}
