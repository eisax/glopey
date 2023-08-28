import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:gloyey/util/app_constants.dart';
import 'package:gloyey/view/screens/home/home_screen.dart';
import 'package:gloyey/view/screens/profile/profile_screen.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const ProfileScreen(),
    const HomeScreen(),
    const HomeScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 25),
        // padding: EdgeInsets.symmetric(horizontal: Get.width * 0.15),
        height: Get.width * 0.15,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            buildBottomNavItem(0, Icons.home_rounded, context),
            buildBottomNavItem(1, Icons.wallet, context),
            buildBottomCenterNavItem(
                2, Icons.qr_code_scanner_outlined, context),
            buildBottomNavItem(3, Icons.settings_outlined, context),
            buildBottomNavItem(4, Icons.person_2_outlined, context),
          ],
        ),
      ),
    );
  }

  Widget buildBottomNavItem(int index, IconData icon, BuildContext context) {
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 25,
            color: _selectedIndex == index
                ? AppConstants.mainColor
                : Theme.of(context).hintColor,
          )
        ],
      ),
    );
  }

  Widget buildBottomCenterNavItem(
      int index, IconData icon, BuildContext context) {
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Container(
        width: 40,
        height: 40,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(50),
            color: AppConstants.mainColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 20,
              color: _selectedIndex == index
                  ? Colors.white
                  : Theme.of(context).hintColor,
            )
          ],
        ),
      ),
    );
  }
}
