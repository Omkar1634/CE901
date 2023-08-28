// ignore_for_file: file_names

import 'dart:convert' show jsonDecode, jsonEncode;
import 'dart:io';

import 'package:app/pages/bottompages/askme/chat_model.dart';
import 'package:app/pages/bottompages/askme/models.dart';
import 'package:http/http.dart' as http;

// ignore: non_constant_identifier_names
String BASE_URL = "https://api.openai.com/v1";
// ignore: non_constant_identifier_names
String API_KEY =
    "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"; // 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

class ApiService {
  static Future<List<ModelsModel>> getModels() async {
    try {
      var response = await http.get(
        Uri.parse("$BASE_URL/models"),
        headers: {'Authorization': 'Bearer $API_KEY'},
      );

      Map jsonResponse = jsonDecode(response.body);
      if (jsonResponse['error'] != null) {
        throw HttpException(jsonResponse['error']['message']);
      }
      //print("jsonRespose $jsonResponse");
      List temp = [];
      for (var value in jsonResponse['data']) {
        temp.add(value);
        print('temp ${value['id']}');
      }
      return ModelsModel.modelsFromSnapshot(temp);
    } catch (error) {
      print("Error $error");
      rethrow;
    }
  }

  static Future<List<ChatModels>> sendMessage(
      {required String message, required String modelId}) async {
    try {
      var response = await http.post(
        Uri.parse("$BASE_URL/completions"),
        headers: {
          'Authorization': 'Bearer $API_KEY',
          'Content-Type': "application/json"
        },
        body: jsonEncode(
          {
            "model": "text-davinci-003",
            "prompt": message,
            "max_tokens": 100,
          },
        ),
      );

      Map jsonResponse = jsonDecode(response.body);
      if (jsonResponse['error'] != null) {
        throw HttpException(jsonResponse['error']['message']);
      }
      List<ChatModels> chatlist = [];
      if (jsonResponse["choices"].lenght > 0) {
        //print("jsonResponse[choices]text ${jsonResponse['choices'][0]["text"]}");
        chatlist = List.generate(
          jsonResponse["choices"].lenght,
          (index) => ChatModels(
            msg: jsonResponse['choices'][index]["text"],
            chatIndex: 1,
          ),
        );
      }
      return chatlist;
    } catch (error) {
      print("Error $error");
      rethrow;
    }
  }
}
