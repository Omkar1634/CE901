import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final String msg;
  final int chatIndex;
  const ChatMessage({super.key, required this.msg, required this.chatIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 16.0),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: Text(msg),
            )
          ],
        ))
      ],
    );
  }
}
