import 'package:app/constant/colors.dart';
import 'package:flutter/material.dart';

class ExerciseCard extends StatelessWidget {
  final int exerciseNum;
  final bool isDone;
  // final VoidCallback press;
  const ExerciseCard({
    super.key,
    required this.exerciseNum,
    this.isDone = false,
    // required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Container(
        width: constraint.maxWidth / 2 - 10,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 23,
              spreadRadius: -13,
              color: kSecondaryColor,
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              height: 42,
              width: 43,
              decoration: BoxDecoration(
                  color: isDone ? kPrimaryLightColor : Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: kPrimaryLightColor)),
              child: Icon(
                Icons.play_arrow,
                color: isDone ? Colors.white : kPrimaryLightColor,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "Exercise $exerciseNum",
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),
      );
    });
  }
}
