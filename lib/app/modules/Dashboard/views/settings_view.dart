import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ogapps_getx/app/routes/app_pages.dart';

class SettingsView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: false,
        actions: [
          InkWell(
            onTap: ((() {
              Get.offAllNamed(Routes.SPLASH);
              Get.snackbar('Goodbye User', 'Logout Success, back to Login',
                  snackPosition: SnackPosition.TOP,
                  snackStyle: SnackStyle.FLOATING,
                  backgroundColor: Colors.red,
                  borderRadius: 24,
                  colorText: Colors.white);
            })),
            child: Padding(
              padding: const EdgeInsets.only(right: 14),
              child: Icon(
                Icons.exit_to_app_rounded,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text(
            '',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
