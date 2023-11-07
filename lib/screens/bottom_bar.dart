
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sama_gp/controllers/logout_controller.dart';
import 'package:sama_gp/controllers/user_controller.dart';
import 'package:sama_gp/screens/Profil_screen.dart';
import 'package:sama_gp/screens/home_screen.dart';
import 'package:sama_gp/screens/post_screen.dart';
import 'package:sama_gp/utils/colors.dart';


class BottomBar extends StatefulWidget {

  final int? selectedIndex; // Modifier le type en int?

  BottomBar({this.selectedIndex});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  int _selectedIndex = 0;

  LogoutController logoutController = Get.put(LogoutController());
  final UserController userController = Get.put(UserController());



  List<String> _appBarTitles = ['Home', 'Publications', 'Profile'];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    if (widget.selectedIndex != null) {
      _selectedIndex = widget.selectedIndex!;
    }
  }

  @override
  Widget build(BuildContext context) {

    List<Widget> _widgetOptions = <Widget>[
      HomeScreen(),
      PostScreen(),
      ProfileScreen(userData: userController.userData.value),
    ];

    return Scaffold(
      appBar:  AppBar(
        title:  Text(_appBarTitles[_selectedIndex].toString()),
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
        bottomNavigationBar: CurvedNavigationBar(
          index: _selectedIndex,
          onTap: _onItemTapped,
          height: 50, // Adjust the height to your preference
          color: AppColors.silverColor,
          backgroundColor: Colors.transparent, // Set your desired background color
          buttonBackgroundColor: Colors.white, // Set your desired button background color
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          items: <Widget>[
            Icon(FluentSystemIcons.ic_fluent_home_regular),
            Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            Icon(FluentSystemIcons.ic_fluent_person_regular),
          ],
        ),
      // bottomNavigationBar: BottomNavigationBar(
      //     currentIndex: _selectedIndex,
      //     onTap: _onItemTapped,
      //     elevation: 10,
      //     showSelectedLabels: false,
      //     showUnselectedLabels: false,
      //     selectedItemColor: Colors.blueGrey,
      //     type: BottomNavigationBarType.fixed,
      //     unselectedItemColor: const Color(0xFF526480),
      //     items: const [
      //       BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),label: "Home"),
      //       BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),label: "Airplane"),
      //       BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),label: "Person"),
      //     ]),
      drawer: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              ),
    child :Drawer(
        backgroundColor: Colors.white70,
        child: ListView(
          children: <Widget>[
            GestureDetector(
              onTap: () => Get.offAll(() => BottomBar(selectedIndex: 2), arguments: {
                'userData': userController.userData.value,
              },),
              child: GetX<UserController>(
                builder: (controller){
                 return UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow (
                        color: AppColors.charColor,
                        blurRadius: 6,
                      )],
                      // gradient: LinearGradient(
                      //     colors: [
                      //       Color(0xfff7b858),
                      //       Color(0xfffca148),
                      //     ]
                      // ),
                      color: AppColors.charColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    accountName: Text(userController.userData.value['username']),
                    accountEmail: Text(userController.userData.value['email']),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage("https://e7.pngegg.com/pngimages/550/997/png-clipart-user-icon-foreigners-avatar-child-face.png"), // Utilisez l'URL de la photo de profil de l'utilisateur
                    ),
                  );
                },
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              hoverColor: Colors.blue,
              tileColor: _selectedIndex == 0 ? Colors.grey[300] : null,
              onTap: () {
                Navigator.pop(context); // Fermer le Drawer
                //Navigator.pushNamed(context, '/profil');
                Get.offAll(() => BottomBar(selectedIndex: 0));

              },
            ),
            ListTile(
              leading: Icon(Icons.post_add),
              title: Text('Publications'),
              tileColor: _selectedIndex == 1 ? Colors.grey[300] : null,
              onTap: () {
                Navigator.pop(context); // Fermer le Drawer
                //Navigator.pushNamed(context, '/profil');
                Get.offAll(() => BottomBar(selectedIndex: 1));

              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profil'),
              hoverColor: Colors.blue,
              tileColor: _selectedIndex == 2 ? Colors.grey[300] : null,
              onTap: () {
                Navigator.pop(context); // Fermer le Drawer
                //Navigator.pushNamed(context, '/profil');
                Get.offAll(() => BottomBar(selectedIndex: 2), arguments: {
                  'userData': userController.userData.value,
                },);

              },
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context); // Fermer le Drawer
                Navigator.pushNamed(context, '/settings');
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                // Logique de déconnexion
                logoutController.logout(); // Fermer le Drawer
                ;
              },
            ),
          ],
        ),
      )
      )

    );
  }
}