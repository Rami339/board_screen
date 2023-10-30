import 'package:flutter/material.dart';
import 'package:on_board/core/board_data.dart';
import 'package:on_board/feature/on_boarding/presentation/views/widgets/on_board_body.dart';

class OnBoardBottom extends StatelessWidget {
  const OnBoardBottom({Key? key, required this.currentIndex}) : super(key: key);
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: InkWell(
        child: AnimatedContainer(
          curve: Curves.linear,
          duration: const Duration(milliseconds: 500),
          width: 100,
          height: 50,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: currentIndex == onboardData.length - 1
                      ? Colors.blueGrey
                      : Colors.grey,
                  blurRadius: 30,
                  offset: const Offset(-5, -5),
                  spreadRadius: 0.5),
              BoxShadow(
                color: currentIndex == onboardData.length - 1
                    ? Colors.grey
                    : Colors.blueGrey,
                blurRadius: 30,
                offset: const Offset(10, 10),
              ),
            ],
            gradient: currentIndex == onboardData.length - 1
                ? const LinearGradient(
                    colors: [Colors.grey, Colors.blueGrey],
                    begin: Alignment.topLeft,
                    end: Alignment.topRight)
                : const LinearGradient(
                    colors: [Colors.blueGrey, Colors.grey],
                    begin: Alignment.topRight,
                    end: Alignment.topLeft),
            borderRadius: BorderRadius.circular(
              50,
            ),
          ),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 400),
            key: const ValueKey<int>(1),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(
                scale: animation,
                child: child,
              );
            },
            child: currentIndex == onboardData.length - 1
                ? const Text(
                    'Done',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black54,
                    ),
                    key: ValueKey<int>(1),
                  )
                : const Icon(
                    Icons.keyboard_double_arrow_right,
                    size: 30,
                    color: Colors.black54,
                  ),
          ),
        ),
        onTap: () {
          pageController.nextPage(
            duration: (const Duration(milliseconds: 300)),
            curve: Curves.linear,
          );
        },
      ),
    );
  }
}
