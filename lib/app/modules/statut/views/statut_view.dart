import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/statut_controller.dart';

class StatutView extends GetView<StatutController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('StatutView'),
      //   centerTitle: true,
      // ),
      body: Center(
        child: Text(
          'StatutView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
