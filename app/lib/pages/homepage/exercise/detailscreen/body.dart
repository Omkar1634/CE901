// import 'package:app/constant/colors.dart';
// import 'package:app/constant/size.dart';
// import 'package:app/pages/homepage/Appbar/all_data.dart';
// import 'package:app/pages/homepage/exercise/aeroics/aerobics.dart';
// import 'package:app/pages/homepage/exercise/aeroics/aeroics_exercise.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class Body extends StatelessWidget {
//   final ExerciseTypes1 exercise;

//   const Body({super.key, required this.exercise});

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return SafeArea(
//       child: Column(
//         children: [
//           Column(
//             children: [
//               Stack(
//                 children: [
//                   Container(
//                     height: 160,
//                     decoration: const BoxDecoration(color: kPPrimaryColor),
//                   ),
//                   Positioned(
//                     top: 20,
//                     left: 0,
//                     child: IconButton(
//                       padding: const EdgeInsets.only(left: kDefaultPadding),
//                       icon: SvgPicture.asset("assets/icons/back.svg"),
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                     ),
//                   ),
//                   Positioned(
//                     top: 30,
//                     right: 20,
//                     child: Container(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: kDefaultPadding),
//                         height: 120,
//                         width: 200,
//                         child: Column(
//                           children: [
//                             const SizedBox(height: 10),
//                             Image.asset(exercise.image),
//                           ],
//                         )),
//                   ),
//                   Positioned(
//                     top: 0,
//                     left: 0,
//                     child: SizedBox(
//                       height: 136,
//                       width: size.width - 200,
//                       child: Column(
//                         children: [
//                           const Spacer(),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: kDefaultPadding),
//                             child: Text(
//                               exercise.title,
//                               style: const TextStyle(
//                                   fontWeight: FontWeight.bold, fontSize: 25),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           Flexible(
//             child: Stack(
//               children: [
//                 Container(
//                   decoration: const BoxDecoration(
//                       color: kBackgroundColor,
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(35),
//                         topRight: Radius.circular(35),
//                       )),
//                 ),
//                 const LiatView(),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class LiatView extends StatelessWidget {
//   const LiatView({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: ListView.builder(
//         itemCount: aerobics.length,
//         itemBuilder: (context, index) => Aerobics(
//           itemIndex: index,
//           aerobics: aerobics[index],
//         ),
//       ),
//     );
//   }
// }
                


// // class LiatView extends StatefulWidget {
// //   const LiatView({
// //     Key key,
// //   }) : super(key: key);

// //   @override
// //   _LiatViewState createState() => _LiatViewState();
// // }

// // class _LiatViewState extends State<LiatView> {
// //   String selectedCategory = 'aerobic';

// //   @override
// //   Widget build(BuildContext context) {
// //     return Expanded(
// //       child: ListView.builder(
// //         itemCount: selectedCategory == 'aerobic' ? aerobics.length : strengths.length,
// //         itemBuilder: (context, index) {
// //           if (selectedCategory == 'aerobic') {
// //             return Aerobics(
// //               itemIndex: index,
// //               aerobics: aerobics[index],
// //             );
// //           } else {
// //             return Strength(
// //               itemIndex: index,
// //               strengths: strengths[index],
// //             );
// //           }
// //         },
// //       ),
// //     );
// //   }
// // }
