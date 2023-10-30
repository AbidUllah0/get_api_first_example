import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_api_class1_asif_taj/Services/posts_model.dart';
import 'package:get_api_class1_asif_taj/Utils/app_url.dart';
import 'package:http/http.dart' as http;

class HomeProvider with ChangeNotifier {
  List<PostsModel> postsList = [];

  Future<List<PostsModel>> getData() async {
    final responce = await http.get(Uri.parse(AppUrl.apiUri));
    var data = jsonDecode(responce.body.toString());

    if (responce.statusCode == 200) {
      for (Map i in data) {
        postsList.add(PostsModel.fromJson(i));
      }
      return postsList;
    } else {
      return postsList;
    }
    notifyListeners();
  }
}
