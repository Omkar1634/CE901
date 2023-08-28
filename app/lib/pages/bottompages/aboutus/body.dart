import 'package:app/pages/bottompages/aboutus/background.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "About Us",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: size.height * 0.01),
          Image.asset(
            "assets/images/aboutus1.png",
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          const Text(
            "Deparment:Computer Science & Electronic Engineering",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          const Text(
            "Disseratation: The Effectiveness of Exercise in Parkinson’s Disease ",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: size.height * 0.01),
        ],
      ),
    );
  }
}
