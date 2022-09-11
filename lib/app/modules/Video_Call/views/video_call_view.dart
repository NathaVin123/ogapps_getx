import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/video_call_controller.dart';

class VideoCallView extends GetView<VideoCallController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VideoCallView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'VideoCallView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
