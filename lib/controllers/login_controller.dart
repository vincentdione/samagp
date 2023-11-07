

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sama_gp/screens/loading_screen.dart';
import 'package:sama_gp/utils/api_endpoints.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;



class LoginController extends GetxController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> loginWithEmail({String? username, String? password}) async {
    var headers = {'Content-Type': 'application/json'};
    debugPrint(" ------***********---------- LOGIN");

    try {
      var url = Uri.parse(ApiEndPoints.baseUrl + ApiEndPoints.authEndPoints.login);

      Map body = {
        'username': username ?? usernameController.text.trim(),
        'password': password ?? passwordController.text
      };

      debugPrint(" ------***********---------- BODY $body");
      debugPrint(" ------***********---------- URL $url");

      try {
        http.Response response = await http.post(url, body: jsonEncode(body), headers: headers);
        debugPrint(" ------***********---------- response ${response.body}");

        final json = jsonDecode(response.body);
        debugPrint(" ------***********---------- json ${json}");
        var token = json['access_token'];
        debugPrint(" ------***********---------- token ${token}");

        final SharedPreferences? prefs = await _prefs;
        await prefs?.setString('token', token);

        if (token != null) {
          usernameController.clear();
          passwordController.clear();
          Get.snackbar("LOGIN","Connexion réussie avec success");
          Get.off(Loading());
        }
        else {
          Get.snackbar("LOGIN","Echec de connexion");
        }


      } catch (e) {
        Get.snackbar("LOGIN","Echec de connexion");
        debugPrint(" ------***********---------- exc $e");
      }
    } catch (error) {
      Get.back();
      showDialog(
        context: Get.context!,
        builder: (context) {
          return SimpleDialog(
            title: Text('Error'),
            contentPadding: EdgeInsets.all(20),
            children: [Text(error.toString())],
          );
        },
      );
    }
  }


// Future<void> loginWithEmail() async {
  //   var headers = {'Content-Type': 'application/json'};
  //   debugPrint(" ------***********---------- LOGIN");
  //   try {
  //     var url = Uri.parse(ApiEndPoints.baseUrl + ApiEndPoints.authEndPoints.login);
  //     //var url = Uri.parse('http://localhost:5000/auth/login');
  //     Map body = {
  //       'username': usernameController.text.trim(),
  //       'password': passwordController.text
  //     };
  //     debugPrint(" ------***********---------- BODY $body");
  //     debugPrint(" ------***********---------- URL $url");
  //
  //     try {
  //       http.Response response = await http.post(url, body: jsonEncode(body), headers: headers);
  //       debugPrint(" ------***********---------- response ${response.body}");
  //
  //       final json = jsonDecode(response.body);
  //       debugPrint(" ------***********---------- json ${json}");
  //       var token = json['access_token'];
  //       debugPrint(" ------***********---------- token ${token}");
  //
  //       final SharedPreferences? prefs = await _prefs;
  //       await prefs?.setString('token', token);
  //
  //       usernameController.clear();
  //       passwordController.clear();
  //       Get.off(HomePage());
  //     }
  //     catch (e){
  //       debugPrint(" ------***********---------- exc $e");
  //
  //     }
  //
  //   }
  //   catch (error) {
  //     Get.back();
  //     showDialog(
  //         context: Get.context!,
  //         builder: (context) {
  //           return SimpleDialog(
  //             title: Text('Error'),
  //             contentPadding: EdgeInsets.all(20),
  //             children: [Text(error.toString())],
  //           );
  //         });
  //   }
  // }
}