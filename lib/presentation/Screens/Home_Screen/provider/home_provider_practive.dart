import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_api_class1_asif_taj/Services/posts_model.dart';
import 'package:get_api_class1_asif_taj/Utils/app_url.dart';
import 'package:http/http.dart' as http;

class HomeProviderPractice with ChangeNotifier {
  List<PostsModel> postsList2 = [];

  Future<List<PostsModel>> getPostsDataPractice() async {
    final responce = await http.get(Uri.parse(AppUrl.apiUri));
    var data = jsonDecode(responce.body.toString());
    if (responce.statusCode == 200) {
      for (Map i in data) {
        postsList2.add(PostsModel.fromJson(i));
      }
      return postsList2;
    } else {
      return postsList2;
    }
    notifyListeners();
  }
}
