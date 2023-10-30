import 'package:flutter/material.dart';

import '../../../../../core/board_data.dart';
import 'on_board_body.dart';
import 'on_bord_item.dart';

class OnBoardPageView extends StatefulWidget {
  const OnBoardPageView({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  State<OnBoardPageView> createState() => _OnBoardPageViewState();
}

class _OnBoardPageViewState extends State<OnBoardPageView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: pageController,
        itemCount: onboardData.length,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        itemBuilder: (context, index) {
          return OnBoardItem(onBoard: onboardData[index]);
        },
      ),
    );
  }
}
