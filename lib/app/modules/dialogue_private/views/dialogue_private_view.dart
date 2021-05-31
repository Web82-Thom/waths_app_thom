import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dialogue_private_controller.dart';

class DialoguePrivateView extends GetView<DialoguePrivateController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DialoguePrivateView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DialoguePrivateView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
