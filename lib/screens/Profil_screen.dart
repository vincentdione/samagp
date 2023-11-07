

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sama_gp/utils/colors.dart';

class ProfileScreen extends StatelessWidget {

  final Map<dynamic, dynamic> userData;

  ProfileScreen({required this.userData});

  @override
  Widget build(BuildContext context) {

    Map<dynamic, dynamic> arguments = Get.arguments ?? {};
    Map<dynamic, dynamic> user = arguments['userData'] ?? userData;

    debugPrint(" ************user************ ${user} ");



    String username = user['username'] ?? '';
    String email = user['email'] ?? '';
    String telephone = user['telephone'] ?? '';
    String adresse = user['adresse'] ?? '';


    debugPrint(" ************************ ${userData} ");
    debugPrint(" ************************ ${username} ");
    debugPrint(" ************************ ${email} ");
    debugPrint(" ************************ ${telephone} ");


    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
          children: [
            const SizedBox(height: 20,),
            CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage("https://e7.pngegg.com/pngimages/550/997/png-clipart-user-icon-foreigners-avatar-child-face.png"),
            ),
            const SizedBox(height: 20,),
            itemProfile("Nom", username, Icons.person_2_outlined),
            const SizedBox(height: 10,),
            itemProfile("Telephone", telephone, Icons.location_on),
            const SizedBox(height: 10,),
            itemProfile("Adresse", adresse, Icons.location_on),
            const SizedBox(height: 10,),
            itemProfile("Email", email, Icons.mail),
            const SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    backgroundColor: AppColors.greenColor,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),),
                  child: const Text("Editer Profile"),
              ),
            )
          ],
      ),
        )
    );

  }


  itemProfile(String title,String subtitle, IconData iconData){
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow (
                offset: Offset(0,5),
                color: AppColors.primary.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10
            )
          ]
      ),
      child: ListTile(
        title:  Text(title),
        subtitle:  Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward),
        tileColor: Colors.white,
      ),
    );

  }

}