import 'package:flutter/material.dart';
import 'package:ttb_app/reponsive/mobile_screen_layout.dart';
import 'package:ttb_app/reponsive/responsive_layout_screen.dart';
import 'package:ttb_app/reponsive/web_screen_layout.dart';
import 'package:ttb_app/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trivia Through the Bible',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}

