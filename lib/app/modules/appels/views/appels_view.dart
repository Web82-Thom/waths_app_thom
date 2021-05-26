import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/appels_controller.dart';

class AppelsView extends GetView<AppelsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('AppelsView'),
      //   centerTitle: true,
      // ),
      body: Center(
        child: Text(
          'AppelsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
