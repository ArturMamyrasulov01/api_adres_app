import 'dart:convert';

import 'package:api_adres_app/models/user_model.dart';
import 'package:http/http.dart' as http;

class ServiceUser {
  static Future<List<UserModel>> getUsers() async {
    Uri url = Uri.parse("https://jsonplaceholder.typicode.com/users");
    dynamic response = await http.get(url);

    return (jsonDecode(response.body)as List).map((e) => UserModel.fromJson(e)).toList();
    // response = jsonDecode(response.body);
    // print(response[0]);
    // return response;
  }
}
