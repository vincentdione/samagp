

import 'package:get/get.dart';
import 'package:sama_gp/screens/detail_post.dart';
import 'package:sama_gp/screens/home_screen.dart';
import 'package:sama_gp/screens/loading_screen.dart';
import 'package:sama_gp/screens/login_screen.dart';
import 'package:sama_gp/screens/register_screen.dart';


class AppRoutes {
   static String home ="/";
   static String login ="/login";
   static String loading ="/loading";
   static String register ="/register";
   static String auth ="/auth";
   static String detailPost ="/detailPost/:id";

   static String getHomeRoute()=>home;
   static String getLoginRoute()=>login;
   static String getRegisterRoute()=>register;
   static String getLoadingRoute()=>loading;
   static String getDetailPostRoute(String id) => "/detailPost/$id";

   static List<GetPage> routes= [
      GetPage(name: login, page: ()=> const LoginScreen(),transition: Transition.zoom, transitionDuration: Duration(seconds: 2)),
      GetPage(name: register,  page: ()=> const RegisterScreen(),transition: Transition.fade, transitionDuration: Duration(seconds: 2)),
      GetPage(name: home, page: ()=>  HomeScreen()),
      GetPage(name: detailPost, page: ()=>  DetailPost(),transition: Transition.fade, transitionDuration: Duration(seconds: 2)),
      GetPage(name: loading, page: ()=> const Loading() ),
      //GetPage(name: allTask, page: ()=> const AllTask(),transition: Transition.fade, transitionDuration: Duration(seconds: 2)),

   ];


}