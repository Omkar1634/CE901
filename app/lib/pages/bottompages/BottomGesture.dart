// ignore_for_file: file_names

import 'package:app/pages/bottompages/aboutus/aboutus.dart';
import 'package:app/pages/bottompages/chatgpt/chat_screen.dart';
import 'package:app/pages/bottompages/pose/pose.dart';
import 'package:app/pages/bottompages/recommendation/recomenndationpage.dart';
import 'package:flutter/material.dart';

import '../../constant/colors.dart';

class BottomWidget extends StatefulWidget {
  const BottomWidget({
    super.key,
  });

  @override
  State<BottomWidget> createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<BottomWidget> {
  List<bool> isActiveList = [false, true, false, false];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          DecoratedBox(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(16))),
          GestureWidget(
            title: "Ask me!",
            image: "assets/images/askme.png",
            isActive: isActiveList[0],
            press: () {
              setState(() {
                isActiveList = [true, false, false, false];
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChatScreen(),
                ),
              );
            },
          ),
          GestureWidget(
            title: "Pose",
            image: "assets/images/pose.png",
            isActive: isActiveList[1],
            press: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      height: 80,
                      decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Row(
                        children: [
                          SizedBox(
                            width: 28,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Do you want to check whether your doing right pose or not. Give a try!!!!!",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.transparent,
                elevation: 0,
              ));
              setState(() {
                isActiveList = [false, true, false, false];
              });

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PosePosition(),
                ),
              );
            },
          ),
          GestureWidget(
            title: "Exercise",
            image: "assets/images/gym.png",
            isActive: isActiveList[2],
            press: () {
              setState(() {
                isActiveList = [false, false, true, false];
              });
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RecommendationPage(),
                ),
              );
            },
          ),
          GestureWidget(
            title: "About us",
            image: "assets/images/aboutus.png",
            isActive: isActiveList[3],
            press: () {
              setState(() {
                isActiveList = [false, false, false, true];
              });
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutUs()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class GestureWidget extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback? press;
  final bool isActive;
  const GestureWidget({
    super.key,
    required this.image,
    required this.title,
    this.press,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            image,
            color: isActive ? kSecondaryColor : kTextLightColor,
          ),
          Text(
            title,
            style:
                TextStyle(color: isActive ? kSecondaryColor : kTextLightColor),
          ),
        ],
      ),
    );
  }
}
