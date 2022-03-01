
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ui_goent/models/on_board_model.dart';
import 'package:ui_goent/pages/forgot_password_page.dart';
import 'package:ui_goent/pages/home/home_page.dart';
import 'package:ui_goent/pages/on_board_screen.dart';
import 'package:ui_goent/pages/sign_up_page.dart';
import 'package:ui_goent/theme.dart';
import 'package:ui_goent/pages/login_page.dart';
import 'package:ui_goent/providers/google_sign_in.dart';
import 'package:ui_goent/wrapper.dart';
import 'dart:ui';

import 'package:provider/provider.dart';

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
        '/login': (context) => const LoginPage(),
      },
    );
  }
}