import 'package:app/constant/colors.dart';
import 'package:app/pages/homepage/Appbar/all_data.dart';
import 'package:app/pages/homepage/exercise/detailscreen/exercisecard.dart';
import 'package:app/pages/homepage/video/video.dart';
import 'package:flutter/material.dart';

class Body1 extends StatefulWidget {
  //final ExerciseTypes exercise;
  final ExerciseTypes1 ex;
  // final List<BalanceTypes> balances;

  const Body1({
    super.key,
    required this.ex,
    // required this.exercise,
  });

  @override
  State<Body1> createState() => _Body1State();
}

class _Body1State extends State<Body1> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: size.height * 0.55,
              decoration: BoxDecoration(
                color: kPrimaryLightColor,
                image: DecorationImage(
                  image: AssetImage(widget.ex.image),
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: size.height * 0.05,
                      width: size.width * 5,
                    ),
                    Text(
                      widget.ex.title,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: size.height * 0.33,
                    ),
                    SizedBox(
                      width: size.width * .5,
                      child: Text(
                        widget.ex.description,
                        style: const TextStyle(fontWeight: FontWeight.w900),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Wrap(
                        spacing: 20, // Set the desired spacing between items
                        runSpacing: 20, // Set the desired spacing between rows
                        children: List.generate(
                          widget.ex.data.length,
                          (id) => InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => videoView(
                                    index: id + 1,
                                    ex: widget.ex,
                                  ),
                                ),
                              );
                              print('sdfsd $id');
                            },
                            child: ExerciseCard(exerciseNum: id + 1),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
