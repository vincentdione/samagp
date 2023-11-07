
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sama_gp/controllers/service_gp_controller.dart';
import 'package:sama_gp/controllers/user_controller.dart';
import 'package:sama_gp/routes/app_routes.dart';
import 'package:sama_gp/screens/Profil_screen.dart';
import 'package:sama_gp/screens/bottom_bar.dart';
import 'package:sama_gp/screens/post_screen.dart';
import 'package:sama_gp/utils/colors.dart';

class HomeScreen extends StatefulWidget {

  final int? selectedIndex; // Modifier le type en int?


  HomeScreen({this.selectedIndex});


  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  late int _selectedIndex;
  final UserController userController = Get.find();
  final ServiceGpController serviceGpController = Get.put(ServiceGpController());

  var pays = [
    'France',
    'Canada',
    'Turquie',
    'Maroc',
    'Chine',
    'Senegal'
  ];

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex ?? 0;
  }





  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          height: 200,
                          child: ListView.builder(
                              itemCount: 6,
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                return InkWell(
                                  onTap: () {
                                    String postId = index.toString(); // Replace this with the actual ID you want to pass
                                    Get.toNamed(AppRoutes.getDetailPostRoute(postId));
                                  },
                                  child: Container(
                                    width: 160,
                                    padding: EdgeInsets.all(20),
                                    margin: EdgeInsets.only(left: 15),
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                            image: AssetImage("lib/images/city${index+1}.jpg"),
                                            fit: BoxFit.cover,
                                            opacity: 0.7
                                        )
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          alignment: Alignment.topRight,
                                          child: Icon(
                                            Icons.bookmark_border_outlined,
                                            color: Colors.white,
                                            size: 30,
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          alignment: Alignment.bottomLeft,
                                          child: Text("City Name",style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600
                                          ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }
                          ),
                        ))
                      ],
                    ),
                    SizedBox(height: 20,),
                    GetX<ServiceGpController>(
                      builder: (controller) {
                        return Obx(() {
                          if (controller.isLoading.value) {
                            // Show a circular loading indicator while data is being fetched
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          } else {
                            // Once the data is loaded, display the SingleChildScrollView
                            return SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Row(
                                  children: [
                                    for (var country in controller.countries)
                                      Container(
                                        margin: EdgeInsets.symmetric(horizontal: 10),
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black26,
                                              blurRadius: 4,
                                            ),
                                          ],
                                        ),
                                        child: Text(
                                          country['name'],
                                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            );
                          }
                        });
                      },
                    ),

                    //   GetX<ServiceGpController>(
                    //   builder: (controller){
                    //     return SingleChildScrollView(
                    //     scrollDirection: Axis.horizontal,
                    //     child: Padding(
                    //     padding: EdgeInsets.all(8),
                    //     child: Row(
                    //     children: [
                    //     for (var country in controller.countries)
                    //     Container(
                    //     margin: EdgeInsets.symmetric(horizontal: 10),
                    //     padding: EdgeInsets.all(10),
                    //     decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(10),
                    //     boxShadow: [
                    //     BoxShadow(
                    //     color: Colors.black26,
                    //     blurRadius: 4,
                    //     )
                    //     ],
                    //     ),
                    //     child: Text(country['name'],style: TextStyle(
                    //     fontSize: 15, fontWeight: FontWeight.w500
                    //     ),),
                    //     )
                    //     ],),
                    //     ),
                    //     );
                    //
                    //
                    // }),
                    SizedBox(height: 10,),
                    ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 6,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context,int index) {
                      return Padding(
                          padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: (){
                                String postId = index.toString(); // Replace this with the actual ID you want to pass
                                Get.toNamed(AppRoutes.getDetailPostRoute(postId));
                              },
                              child: Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image:  AssetImage("lib/images/city${index + 1}.jpg"),
                                    fit: BoxFit.cover,
                                    opacity: 0.7
                                  )
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("City Name",
                                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600)
                                    ,),
                                  Icon(Icons.more_vert,size: 30,)
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Icon(Icons.star,
                                  color: AppColors.greenColor,size: 20
                                  ,),
                                Text("4.5", style: TextStyle(fontWeight: FontWeight.w500),)

                              ],
                            )
                          ],
                        ),

                      );
                    })
                  ],
                ),

              ),
            )
        ),
    );
  }
}
