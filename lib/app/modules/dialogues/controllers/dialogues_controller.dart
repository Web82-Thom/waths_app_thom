import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:whats_app_thom/app/modules/dialogues/Models/dialogue_model.dart';

class DialoguesController extends GetxController {
  
  final List<DialogueModel> dialogues = [
    DialogueModel('Thomas ORTA', 'person.svg', false, '14h29', 'Ola'),
    DialogueModel('Lisa ORTA', 'person.svg', false, '14h29', 'Que tale?'),
    DialogueModel('Sandrine ORTA', 'groups.svg', true, '14h15', 'Miuy bien ? y tu?'),
    DialogueModel('Noah ORTA', 'groups.svg', true, '14h15', 'Commo te liamas'),
    DialogueModel('M-G ORTA', 'person.svg', false, '14h29', '????????????'),
    DialogueModel('Gilles ORTA', 'person.svg', false, '14h54', '????????????'),
  ];
  
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
}
