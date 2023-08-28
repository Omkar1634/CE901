import 'package:app/components/rounded_button.dart';
import 'package:app/pages/login/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/text_field_container.dart';
import '../../constant/colors.dart';
import '../login/background.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "SIGNUP",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          SvgPicture.asset(
            "assets/icons/signup.svg",
            width: size.width * 0.2,
          ),
          const TextFieldContainer(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Patient ID",
                icon: Icon(
                  Icons.person,
                  color: kPrimaryColor,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          const TextFieldContainer(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Name ",
                icon: Icon(
                  Icons.person,
                  color: kPrimaryColor,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          const TextFieldContainer(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Doctor ID",
                icon: Icon(
                  Icons.person,
                  color: kPrimaryColor,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          const TextFieldContainer(
            child: TextField(
              decoration: InputDecoration(
                hintText: " Doctor Name",
                icon: Icon(
                  Icons.person,
                  color: kPrimaryColor,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          RoundedButton(
              text: "SIGN IN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginPage();
                    },
                  ),
                );
              })
        ],
      ),
    );
  }
}
