import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soclose_dhaka_ltd_task/Consts/colors.dart';
import 'package:soclose_dhaka_ltd_task/Views/Home/home.dart';
import 'Views/Home/bottom_nav_bar_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: bgColor
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "airbnb"),
      home:BottomNavBar(),
    );
  }
}

