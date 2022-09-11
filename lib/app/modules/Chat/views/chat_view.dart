import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ogapps_getx/app/routes/app_pages.dart';

import '../controllers/chat_controller.dart';

class ChatView extends GetView<ChatController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        elevation: 0,
        title: InkWell(
          onTap: (() {
            Get.toNamed(Routes.CONTACT_DETAIL, arguments: {});
          }),
          child: Row(
            children: [
              Icon(
                Icons.people,
                color: Colors.blue,
              ),
              SizedBox(
                width: 12,
              ),
              Text('User'),
            ],
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Get.toNamed(Routes.VIDEO_CALL, arguments: {});
            },
            child: Icon(Icons.video_call_rounded),
          ),
          SizedBox(
            width: 20,
          ),
          InkWell(
              onTap: () {
                Get.toNamed(Routes.CALL, arguments: {});
              },
              child: Icon(Icons.call_rounded)),
          PopupMenuButton<int>(
            onSelected: (item) => controller.onSelected(context, item),
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                value: 0,
                child: Text(
                  'View Contact',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ),
              PopupMenuItem(
                child: Text(
                  'Search',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
                onTap: () {},
              ),
              PopupMenuItem(
                child: Text(
                  'Unmute',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
                onTap: () {},
              ),
              PopupMenuItem(
                child: Text(
                  'Block',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
                onTap: () {},
              ),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration:
                    InputDecoration(hintText: 'Type your message here...'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
