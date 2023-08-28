import 'package:app/constant/colors.dart';
import 'package:app/pages/homepage/Appbar/body.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPPrimaryColor,
        appBar: AppBar(
          elevation: 0,
          title: const Text("Dashboard"),
          backgroundColor: kPPrimaryColor,
        ),
        body: const Body(),
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: kPPrimaryColor,
                  width: double.infinity,
                  height: 200,
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          height: 120,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/images/essexs.jpeg"),
                            ),
                          ),
                        ),
                        const Text(
                          "University of Essex",
                          style: TextStyle(color: Colors.black),
                        )
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
