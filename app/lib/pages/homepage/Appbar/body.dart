import 'package:app/constant/colors.dart';
import 'package:app/pages/bottompages/BottomGesture.dart';

import 'package:app/pages/homepage/Appbar/all_data.dart';
import 'package:app/pages/homepage/Appbar/exercise.dart';
import 'package:app/pages/homepage/exercise/detailscreen/detail_exercise.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPPrimaryColor,
      bottomNavigationBar: const BottomWidget(),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
          ),
          SafeArea(
            child: ListView.builder(
              itemCount: exercise.length,
              itemBuilder: (context, index) => Exercise(
                itemIndex: index,
                exercise: exercise[index],
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                        exercise: exercise[index],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
