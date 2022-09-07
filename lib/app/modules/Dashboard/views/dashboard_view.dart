import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ogapps_getx/app/routes/app_pages.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (() => Get.offAllNamed(Routes.SPLASH)),
              child: Icon(Icons.exit_to_app_rounded),
            ),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Coming Soon...',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
