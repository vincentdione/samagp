
import 'package:get/get.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:sama_gp/utils/api_endpoints.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';




class UserController extends GetxController {
  // Observable variables
  RxInt userId = 0.obs;
  RxList<String> userName = <String>[].obs;

  RxMap userData = {}.obs;


  void onInit() {
    super.onInit();
    decodeToken(); // Call decodeToken when the controller is initialized
  }

  Future<void> decodeToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');


    if (token != null) {
      Map<String, dynamic> decodedToken = JwtDecoder.decode(token);

      // Update the observable variables
      userId.value = decodedToken['user_id'];
      List<dynamic> roles = decodedToken['role'];
      roles.forEach((role) {
        userName.add(role.toString());
      });

      debugPrint("****************token************************");
      debugPrint("****************token************************ ${decodedToken['role']}");
      debugPrint("****************token********************${decodedToken['user_id']}****");
      debugPrint("****************token********************${decodedToken}****");
      userData.value = await fetchUserInfo(decodedToken['user_id']);
      debugPrint("****************token********************${userData.value}****");



      // Add here other observable updates if needed
    } else {
      debugPrint('Le token n\'a pas été enregistré.');
    }
  }


  Future<Map<String, dynamic>> fetchUserInfo(int userId) async {
    var url = Uri.parse(ApiEndPoints.baseUrl + "users/find/$userId");

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final userData = json.decode(response.body);
      return userData;
    } else {
      throw Exception('Failed to load user info');
    }
  }



}
