import 'package:app/constant/colors.dart';
import 'package:app/pages/homepage/Appbar/all_data.dart';
import 'package:app/pages/homepage/exercise/detailscreen/body1.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final ExerciseTypes1 exercise;
  const DetailScreen({super.key, required this.exercise});

  @override
  Widget build(BuildContext context) 
  {
    
  

    return SafeArea(
      child: Scaffold(
        backgroundColor: kPPrimaryColor,
        body: Body1(
         ex: exercise,

          //allexercises: filteredExercises,

          // balances: balances,
          // exercise: exercise,
        ),
      ),
    );
  }
}
