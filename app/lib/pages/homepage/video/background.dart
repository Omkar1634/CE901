import 'package:flutter/material.dart';

class background extends StatelessWidget {
  final Widget child;
  const background({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Positioned(
          top: size.height * 0.20,
          child: Container(
            width: size.width,
            height: size.height,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
          ),
        ),
        child,
      ],
    );
  }
}
