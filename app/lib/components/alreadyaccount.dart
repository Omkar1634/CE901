import 'package:flutter/material.dart';

import '../constant/colors.dart';

class AlreadyAccount extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  const AlreadyAccount({
    super.key,
    this.login = true,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(login ? "Don't have an account ? " : "Already have an account ?",
            style: const TextStyle(
              color: kPrimaryColor,
            )),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: const TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
