import 'package:app/pages/homepage/Appbar/all_data.dart';
import 'package:app/pages/homepage/video/background.dart';
import 'package:flutter/material.dart';
import '../../../constant/colors.dart';

class videoView extends StatefulWidget {
  final ExerciseTypes1 ex;
  final int index;
  const videoView({super.key, required this.ex, required this.index});

  @override
  State<videoView> createState() => _videoViewState();
}

class _videoViewState extends State<videoView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print('dgdsg ${widget.index.toString()}fsdsd');
    print(widget.ex.data[widget.index.toString()].toString());
    print(widget.ex.data.toString());
    return background(
      child: Container(
        width: size.width * 1,
        height: size.height * 0.30,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
          color: kPrimaryLightColor,
        ),
        child: Center(
          child: Text(
            widget.ex.data[widget.index.toString()]['name'].toString(),
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }
}



// Positioned(
//             child: Container(
//               width: size.width * 1,
//               height: size.height * 0.20,
//               decoration: const BoxDecoration(
//                 color: kPrimaryLightColor,
//               ),
//               child: Center(
//                 child: Text(
//                   widget.ex.data[widget.index.toString()]['name'].toString(),
//                   style: TextStyle(fontSize: 22),
//                 ),
//               ),
//             ),
//           )
// Stack(
//                 children: [
//                   Positioned(
                    
//                       child: Container(
//                         width: size.width,
//                         height: size.height - size.height * 0.20,
//                         decoration: const BoxDecoration(
//                           color: Colors.amber,
//                         ),
//                       ))
//                 ],
//               )



// Container(
//             width: size.width * 1,
//             height: size.height * 0.20,
//             decoration: const BoxDecoration(
//               color: kPrimaryLightColor,
//             ),
//             child: Center(
//               child: Text(
//                 widget.ex.data[widget.index.toString()]['name'].toString(),
//                 style: TextStyle(fontSize: 22),
//               ),
//             ),
//           ),