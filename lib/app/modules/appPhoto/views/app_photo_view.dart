import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/app_photo_controller.dart';

class AppPhotoView extends GetView<AppPhotoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('AppPhotoView'),
      //   centerTitle: true,
      // ),
      body: Center(
        child: Text(
          'AppPhotoView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
