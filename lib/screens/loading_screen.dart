
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sama_gp/screens/bottom_bar.dart';
import 'package:sama_gp/screens/home_screen.dart';
import 'package:get/get.dart';
import 'package:sama_gp/utils/colors.dart';


class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}


class _LoadingState extends State<Loading> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5),(){
      Get.off(BottomBar());

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.silverColor,
      body: Center(
        child: SpinKitFadingCube(
          color: AppColors.greenColor,
          duration : Duration(milliseconds: 3400),
          size: 80.0,
        ),
      ),
    );;
  }
}