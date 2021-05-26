import 'package:get/get.dart';
import 'package:flutter/material.dart';

class DialoguesController extends GetxController {
  //TODO: Implement DialoguesController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  final imgUrl = [
    "https://randomuser.me/api/portraits/men/86.jpg",
    "https://randomuser.me/api/portraits/men/86.jpg",
    "https://randomuser.me/api/portraits/men/86.jpg",
    "https://randomuser.me/api/portraits/men/86.jpg",
    "https://randomuser.me/api/portraits/men/86.jpg",
    "https://randomuser.me/api/portraits/men/86.jpg",
    "https://randomuser.me/api/portraits/men/86.jpg",
    "https://randomuser.me/api/portraits/men/86.jpg",
    "https://randomuser.me/api/portraits/men/86.jpg",
  ];

  final containerRadius = Radius.circular(30.0);
}
