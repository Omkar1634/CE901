import 'package:app/constant/colors.dart';
import 'package:app/pages/login/background.dart';
import 'package:app/pages/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/alreadyaccount.dart';
import '../../components/rounded_button.dart';
import '../../components/text_field_container.dart';
import '../homepage/Appbar/homepage.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * 0.3,
          ),
          SizedBox(
            height: size.height * 0.03,
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
          SizedBox(
            height: size.height * 0.01,
          ),
          RoundedButton(
            text: "LOGIN",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const HomePage();
                  },
                ),
              );
            },
          ),
          AlreadyAccount(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SignUp();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
