import 'package:flutter/material.dart';
import 'package:on_board/core/board_data.dart';
import 'package:on_board/feature/on_boarding/presentation/views/widgets/on_bord_bottom.dart';

import 'on_board_swipe.dart';
import 'on_bord_item.dart';

class OnBoardBody extends StatefulWidget {
  const OnBoardBody({Key? key}) : super(key: key);

  @override
  State<OnBoardBody> createState() => _OnBoardBodyState();
}

final pageController = PageController();
var currentIndex = 0;

class _OnBoardBodyState extends State<OnBoardBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
          curve: Curves.linear,
          duration: const Duration(milliseconds: 500),
          decoration: BoxDecoration(
            gradient: currentIndex == onboardData.length - 1
                ? const LinearGradient(
                    colors: [Colors.blueGrey, Colors.grey],
                    begin: Alignment.bottomLeft,
                    end: Alignment.bottomRight)
                : const LinearGradient(
                    colors: [Colors.grey, Colors.blueGrey],
                    begin: Alignment.bottomRight,
                    end: Alignment.bottomLeft),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.60,
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
                ),
                OnBoardBottom(
                  currentIndex: currentIndex,
                ),
                OnBoardSwipe(
                  currentIndex: currentIndex,
                ),
              ],
            ),
          )),
    );
  }
}
