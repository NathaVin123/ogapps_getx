import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ogapps_getx/app/routes/app_pages.dart';

class ChatView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Chat',
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: false,
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            ListTile(
              title: Text('User'),
              subtitle: Text('Message Preview'),
              onTap: () {
                Get.toNamed(Routes.CHAT);
                Get.snackbar('User', 'Pesan Terpilih',
                    snackPosition: SnackPosition.TOP,
                    snackStyle: SnackStyle.FLOATING,
                    backgroundColor: Colors.blue,
                    borderRadius: 24,
                    colorText: Colors.white);
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Divider(
                thickness: 1,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
