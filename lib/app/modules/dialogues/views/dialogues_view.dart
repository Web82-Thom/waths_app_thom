import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dialogues_controller.dart';

class DialoguesView extends GetView<DialoguesController> {
final imgUrl = [
  "https://randomuser.me/api/portraits/men/86.jpg",
  "https://randomuser.me/api/portraits/men/86.jpg",
  "https://randomuser.me/api/portraits/men/86.jpg",
  "https://randomuser.me/api/portraits/men/86.jpg",
  "https://randomuser.me/api/portraits/men/86.jpg",
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('AppelsView'),
      //   centerTitle: true,
      // ),
      body: Center(
        child: Text(
          'DialoguesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
