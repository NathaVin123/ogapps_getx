import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ogapps_getx/app/modules/Contact_Detail/views/contact_detail_view.dart';
import 'package:ogapps_getx/app/routes/app_pages.dart';

class ChatController extends GetxController {
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Get.toNamed(Routes.CONTACT_DETAIL, arguments: {});
        break;
    }
  }
}
