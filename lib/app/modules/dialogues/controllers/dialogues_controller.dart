import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:whats_app_thom/app/modules/dialogues/Models/dialogue_model.dart';

class DialoguesController extends GetxController {
  
  final List<DialogueModel> dialogues = [
    DialogueModel('Thomas ORTA', 'person.svg', false, '14h29', 'Ola', 'online', false),
    DialogueModel('Lisa ORTA', 'person.svg', false, '14h29', 'Que tale?', 'offline', false),
    DialogueModel('Sandrine ORTA', 'groups.svg', true, '14h15', 'Miuy bien ? y tu?', 'offline', false),
    DialogueModel('Noah ORTA', 'groups.svg', true, '14h15', 'Commo te liamas', 'online', false),
    DialogueModel('M-G ORTA', 'person.svg', false, '14h29', '????????????', 'offline', false),
    DialogueModel('Gilles ORTA', 'person.svg', false, '14h54', '????????????', 'offline', false),
    DialogueModel('J-m ORTA', 'person.svg', false, '14h54', '????????????','offline', false),
    DialogueModel('Melissa ORTA','person.svg', false, '14h54', '????????????', 'offline', false),
    DialogueModel('Marie ORTA','person.svg', false, '14h54', '????????????', 'offline', false),
    DialogueModel('Kate ORTA','person.svg', false, '14h54', '????????????', 'offline', false),
    DialogueModel('Moustique ORTA','person.svg', false, '14h54', '????????????', 'offline', false),
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
