import 'package:flutter/material.dart';
import 'package:ui_anim_page/pages/home_page.dart';
import 'package:ui_anim_page/pages/sign_in_page.dart';
import 'package:ui_anim_page/pages/sign_up_page.dart';
import 'package:ui_anim_page/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:SplashPage(),
      routes: {
        SignInPage.id:(context)=>SignInPage(),
        SignUpPage.id:(context)=>SignUpPage(),
        HomePage.id:(context)=>HomePage(),
      },
    );
  }
}
