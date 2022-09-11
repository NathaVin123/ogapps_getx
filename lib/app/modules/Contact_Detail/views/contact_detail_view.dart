import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ogapps_getx/app/routes/app_pages.dart';

import '../controllers/contact_detail_controller.dart';

class ContactDetailView extends GetView<ContactDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.blue,
          elevation: 0,
          actions: [
            PopupMenuButton<int>(
              // onSelected: (item) => controller.onSelected(context, item),
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text(
                    'Share',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text(
                    'Edit',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
        body: Center(
          child: Column(
            children: [
              CircleAvatar(
                child: Icon(
                  Icons.people,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Username',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              Text(
                'username@username.com',
                style: TextStyle(
                    color: Color.fromARGB(132, 33, 149, 243), fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (() {
                        Get.toNamed(Routes.CALL, arguments: {});
                      }),
                      child: Icon(
                        Icons.call_rounded,
                        color: Colors.blue,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.VIDEO_CALL, arguments: {});
                      },
                      child: InkWell(
                        child: Icon(
                          Icons.video_call_rounded,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.CHAT, arguments: {});
                      },
                      child: Icon(
                        Icons.search_rounded,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Divider(
                  thickness: 3,
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.cancel_rounded,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Text(
                        'Block',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.share_rounded,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Text(
                        'Report',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Divider(
                  thickness: 3,
                ),
              ),
            ],
          ),
        ));
  }
}
