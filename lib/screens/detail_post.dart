import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sama_gp/screens/detail_post_bottom_bar.dart';
import 'package:sama_gp/screens/post_app_bar.dart';

class DetailPost extends StatefulWidget {
  const DetailPost({super.key});

  @override
  State<DetailPost> createState() => _DetailPostState();
}

class _DetailPostState extends State<DetailPost> {
  @override
  Widget build(BuildContext context) {
    String? postId = Get.parameters['id'];

    print("id ========= ${postId} ");
    debugPrint("id ========= ${postId} ");
    var intValue = int.parse(postId!);

    return  SafeArea(
        child: Container(
            width: MediaQuery.of(context).size.width, // Use MediaQuery to get the screen width
            height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("lib/images/city${intValue + 1}.jpg"),
                fit: BoxFit.cover,
                // colorFilter: ColorFilter.mode(
                //   Colors.black.withOpacity(0.7), // Set the opacity for the image (if required)
                //   BlendMode.srcOver,
                // ),
                opacity: 0.7
            )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: PostAppBar(),
          ),
          bottomNavigationBar: detailPostBottomBar(),
        )
    ));
  }
}


