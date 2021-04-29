import 'package:bottomnav/pages/home/home_page.dart';
import 'package:bottomnav/pages/main_navigation/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBuilder<MainController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomePage(),
                Scaffold(),
                Scaffold(),
                Scaffold(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.red,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              _getBottomNav(
                Icons.home,
                'home',
              ),
              _getBottomNav(
                Icons.photo_camera_outlined,
                'home',
              ),
              _getBottomNav(
                Icons.account_circle_outlined,
                'home',
              ),
            ],
          ),
        );
      },
    );
  }

  _getBottomNav(IconData icon, String label) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
