import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/chat_controller.dart';

class ChatView extends GetView<ChatController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        elevation: 0,
        title: Row(
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Icon(Icons.bar_chart),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Text(
          '',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: BottomAppBar(),
    );
  }
}
