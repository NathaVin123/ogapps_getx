import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'OGAPPS',
          style: TextStyle(
              fontSize: 50, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
      ),
    );
  }
}
