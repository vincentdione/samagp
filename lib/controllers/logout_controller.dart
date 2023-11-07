

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sama_gp/screens/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;



class LogoutController extends GetxController {

  void logout () async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    final SharedPreferences? prefs = await _prefs;
    prefs?.clear();
    Get.snackbar("Déconnexion","déconnexion réussie avec success");
    Get.offAll(const LoginScreen());
  }


}