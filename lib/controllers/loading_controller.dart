import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingButtonController extends GetxController {
  var isLoading = false.obs;

  void startLoading() {
    isLoading.value = true;
    // Effectuer ici vos opérations asynchrones
    // Par exemple, une requête HTTP
    // Future.delayed(Duration(seconds: 2), () {
    //   stopLoading();
    // });
  }

  void stopLoading() {
    isLoading.value = false;
  }


}