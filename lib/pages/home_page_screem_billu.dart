import 'package:billu_partners/pages/other/custom_widget/custom_color_function.dart';
import 'package:billu_partners/pages/tabs/shooping_screen.dart';
import 'package:flutter/material.dart';
import 'package:billu_partners/pages/tabs/dashboard_screen.dart';
import 'package:billu_partners/pages/tabs/marcketing_screen_fro_bottomnbar.dart';
import 'package:billu_partners/pages/tabs/profile_screen/profile_screen.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    List forBottomNavigation=[
      DashboardScreen(),
      MarcatingScreen(),
      ShoppingScreen(),
      ProfileScreen()
    ];
    return Scaffold(

      body: forBottomNavigation[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: Colors.red,
        selectedIconTheme: IconThemeData(
          color: Color(customColor("ea0a8e"))
        ),
        selectedItemColor: Colors.black,
        showUnselectedLabels: true,
        // unselectedFontSize: 10,
        // iconSize: 10,
        unselectedItemColor: Colors.black,
        onTap: (value) {
          setState(() {
            currentIndex=value;

          });
        },
        items:  [
          BottomNavigationBarItem(icon:Icon(Icons.date_range_sharp),label: "Dashboard" ),
          BottomNavigationBarItem(icon:Icon(Icons.spatial_audio_off),label: "Marketing" ),
          BottomNavigationBarItem(icon:Icon(Icons.local_convenience_store_rounded),label: "Shop" ),
          BottomNavigationBarItem(icon:Icon(Icons.person_rounded),label: "Profile" ),
        ],
      ),

    );
  }
}
