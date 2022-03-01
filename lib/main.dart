import 'package:flutter/material.dart';
import 'package:ui_goent/pages/on_board_screen.dart';
import 'package:ui_goent/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData (
        fontFamily: 'Nunito',
        primaryColor: colorPrimary,
      ),
      routes: {
        '/': (context) => const OnBoarding(),
        // '/login': (context) => LoginPage(),
      },
    );
  }
}