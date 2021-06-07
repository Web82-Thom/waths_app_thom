import 'package:get/get.dart';
import 'package:flutter/material.dart ';

class DialoguePrivateController extends GetxController {

  bool show = false;
  FocusNode focusNode = FocusNode();

  TextEditingController dialogueController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    //pour le display du conatiner emoji
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        show = false;
      };
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
