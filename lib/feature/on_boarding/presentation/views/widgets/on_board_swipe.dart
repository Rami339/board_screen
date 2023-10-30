import 'package:flutter/material.dart';

class OnBoardSwipe extends StatelessWidget {
  final int currentIndex;

  const OnBoardSwipe({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 12,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            margin: index == currentIndex
                ? const EdgeInsets.only(left: 7)
                : const EdgeInsets.only(left: 7),
            width: index == currentIndex ? 25 : 12,
            height: 12,
            decoration: BoxDecoration(
              color: currentIndex == index
                  ? const Color(0xff27374D)
                  : const Color(0xff526D82),
              borderRadius: BorderRadius.circular(50),
            ),
          );
        },
      ),
    );
  }
}
