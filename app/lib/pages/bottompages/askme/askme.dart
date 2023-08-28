
import 'package:app/pages/bottompages/askme/Apiservice.dart';
import 'package:app/pages/bottompages/askme/chat_model.dart';
import 'package:app/pages/bottompages/askme/chatmessage.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AskMe extends StatefulWidget {
  const AskMe({super.key});

  @override
  State<AskMe> createState() => _AskMeState();
}

class _AskMeState extends State<AskMe> {
  late TextEditingController textEditingController;

  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  List<ChatModels> chatList = [];

  Widget _buildTextComposser() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: textEditingController,
            onSubmitted: (value) async {
              await sendMessgaeFCT();
            },
            decoration:
                const InputDecoration.collapsed(hintText: "Send a message"),
          ),
        ),
        IconButton(
            icon: const Icon(Icons.send),
            onPressed: () async {
              await sendMessgaeFCT();
            })
      ],
    ).px16();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ask Me!!")),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
                child: ListView.builder(
                    reverse: true,
                    padding: Vx.m8,
                    itemCount: chatList.length,
                    itemBuilder: (context, index) {
                      return ChatMessage(
                        msg: chatList[index].msg,
                        chatIndex: chatList[index].chatIndex,
                      );
                    })),
            Container(
              decoration: BoxDecoration(color: context.cardColor),
              child: _buildTextComposser(),
            )
          ],
        ),
      ),
    );
  }

  Future<void> sendMessgaeFCT() async {
    try {
      setState(() {
        chatList.add(ChatModels(msg: textEditingController.text, chatIndex: 0));
      });
      chatList.addAll(await ApiService.sendMessage(
          message: textEditingController.text, modelId: "text-davinci-003"));

      setState(() {});
    } catch (error) {
      print("Error $error");
    }
  }
}
