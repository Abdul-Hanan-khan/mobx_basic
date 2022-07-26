import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:mobx_placeholder/model/user_model.dart';
import 'package:mobx_placeholder/store/counter.dart';
class HttpServices{
  static Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/users");
var storeCounter=Counter();
  static Future<List<UserModel>?> getAllUsers() async {
    try {
      var response = await http.get(
        uri,
      );
      if (response.statusCode == 200) {
        List rawList = jsonDecode(response.body);
        return rawList.map((json) => UserModel.fromJson(json)).toList();
      } else
        return null;
    }
    catch (e) {
      return null;
    }
  }
}

