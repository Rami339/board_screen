import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:on_board/feature/on_boarding/presentation/views/on_board_home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Builder(
        builder: (BuildContext context) {
          SystemChrome.setSystemUIOverlayStyle(
            const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark,
              statusBarBrightness: Brightness.light,
            ),
          );
          return const OnBoardHome();
        },
      ),
    );
  }
}
