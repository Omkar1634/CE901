import 'package:app/constant/colors.dart';
import 'package:app/constant/size.dart';
import 'package:app/pages/homepage/Appbar/all_data.dart';

import 'package:flutter/material.dart';

class Exercise extends StatelessWidget {
  const Exercise({
    super.key,
    required this.itemIndex,
    required this.exercise,
    required this.press,
  });

  final int itemIndex;
  final ExerciseTypes1 exercise;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: kDefaultPadding / 2,
        ),
        // color: Colors.blueAccent,

        height: 160,
        child: InkWell(
          onTap: press,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 136,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: itemIndex.isEven ? kBlueColor : kSecondaryColor,
                  //boxShadow: const [kDefaultShadow],
                ),
                child: Container(
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
              ),
              // our Exercise image
              Positioned(
                top: 25,
                right: 0,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 120,
                  width: 200,
                  child: Image.asset(
                    exercise.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 55,
                left: 0,
                child: SizedBox(
                  height: 120,
                  width: size.width - 200,
                  child: Column(
                    children: [
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        child: Text(
                          exercise.title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
