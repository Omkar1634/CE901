import 'package:app/constant/colors.dart';
import 'package:app/pages/homepage/Appbar/homepage.dart';
import 'package:app/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          primarySwatch: Colors.green,
          useMaterial3: true,
          //scaffoldBackgroundColor: kPPrimaryColor,
        ),
        routes: {
          "/": (context) => const HomePage(), //SplashScreen()
        });
  }
}
