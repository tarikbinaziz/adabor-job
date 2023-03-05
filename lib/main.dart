import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soclose_dhaka_ltd_task/Consts/colors.dart';
import 'package:soclose_dhaka_ltd_task/Views/Splash%20Screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: bgColor
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "airbnb"),
      home:const SplashScreen(),
    );
  }
}

