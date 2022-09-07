import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return controller.screens[controller.indexScreen.value];
      }),
      bottomNavigationBar: Obx(() {
        return BottomAppBar(
          elevation: 0,
          child: NavigationBarTheme(
            data: NavigationBarThemeData(
                backgroundColor: Colors.white,
                indicatorColor: Colors.blue,
                labelTextStyle: MaterialStateProperty.all(TextStyle(
                  fontWeight: FontWeight.bold,
                ))),
            child: NavigationBar(
              labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
              selectedIndex: controller.indexScreen.value,
              animationDuration: Duration(seconds: 1),
              onDestinationSelected: (index) {
                controller.changeScreenIndex(index);
              },
              destinations: [
                NavigationDestination(
                  icon: Icon(Icons.chat),
                  selectedIcon: Icon(
                    Icons.chat,
                    color: Colors.white,
                  ),
                  label: 'Chat',
                ),
                NavigationDestination(
                    icon: Icon(Icons.settings),
                    selectedIcon: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    label: 'Settings'),
              ],
            ),
          ),
        );
      }),
    );
  }
}
