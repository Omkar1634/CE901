// ignore_for_file: prefer_const_constructors

import 'package:app/constant/images.dart';
import 'package:app/constant/size.dart';
import 'package:app/pages/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  get controller => null;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 145));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Positioned(
                top: 80,
                left: tDefaultSize,
                child: Image(
                  image: AssetImage(tLogo1),
                  width: 300,
                  height: 310,
                )),
            Positioned(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.network(
                        "https://assets4.lottiefiles.com/private_files/lf30_x31bhcov.json",
                        controller: _controller, onLoaded: (compos) {
                      _controller
                        ..duration = compos.duration
                        ..forward().then((value) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WelcomeScreen()));
                        });
                    }),
                  ],
                ),
              ),
            ),
            const Positioned(
              bottom: 80,
              left: ttDefaultSize,
              child: Image(
                image: AssetImage(tDown1),
                width: 300,
                height: 200,
              ),
            )
          ],
        ),
      ),
    );
  }
}



// then((value) {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => LoginPage()))

// Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Lottie.network(
//                 "https://assets4.lottiefiles.com/private_files/lf30_x31bhcov.json",
//                 controller: _controller, onLoaded: (compos) {
//               _controller
//                 ..duration = compos.duration
//                 ..forward().then((value) {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => LoginPage()));
//                 });
//             }),
//           ],
//         ),
//       ),