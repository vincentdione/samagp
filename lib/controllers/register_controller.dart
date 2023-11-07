

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sama_gp/utils/api_endpoints.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class RegisterController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  final Future<SharedPreferences>  prefs = SharedPreferences.getInstance();

  Future<void> registerWithEmail() async {
    try {
        var headers = {'Content-Type': 'application/json'};
        var url = Uri.parse(
           ApiEndPoints.baseUrl + ApiEndPoints.authEndPoints.register);
        Map body = {
          'name': nameController.text,
          'email':emailController.text.trim(),
          'password': passwordController.text
        };
        http.Response response = await http.post(url,body:jsonEncode(body),headers: headers);
    if (response.statusCode == 200){
       final json = jsonDecode(response.body);
       if (json['code'] == 0){
         var token = json['data']['Token'];
         print(token);
         final SharedPreferences? _prefs = await prefs;

         await _prefs?.setString('token', token);
         nameController.clear();
         emailController.clear();
         passwordController.clear();
         
         // go to Home
       }
       else {
         throw jsonDecode(response.body)['message'] ?? "Unknown Error Occured";
       }
    }
    else {
      throw jsonDecode(response.body)['message'] ?? "Unknown Error Occured";

    }
    }

    catch (e) {
      Get.back();
      Get.snackbar("Error", "error");
    }
  }


}