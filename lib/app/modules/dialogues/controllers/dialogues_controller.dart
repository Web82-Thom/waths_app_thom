import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:whats_app_thom/app/modules/dialogues/Models/dialogue_model.dart';

class DialoguesController extends GetxController {
  
  final List<DialogueModel> dialogues = [
    DialogueModel('Thomas ORTA', 'person.svg', false, '14h29', 'Ola', 'online'),
    DialogueModel('Lisa ORTA', 'person.svg', false, '14h29', 'Que tale?', 'offline'),
    DialogueModel('Sandrine ORTA', 'groups.svg', true, '14h15', 'Miuy bien ? y tu?', 'offline'),
    DialogueModel('Noah ORTA', 'groups.svg', true, '14h15', 'Commo te liamas', 'online'),
    DialogueModel('M-G ORTA', 'person.svg', false, '14h29', '????????????', 'offline'),
    DialogueModel('Gilles ORTA', 'person.svg', false, '14h54', '????????????', 'offline'),
    DialogueModel('J-m ORTA', 'person.svg', false, '14h54', '????????????','offline'),
    DialogueModel('Melissa ORTA','person.svg', false, '14h54', '????????????', 'offline'),
    DialogueModel('Marie ORTA','person.svg', false, '14h54', '????????????', 'offline'),
    DialogueModel('Kate ORTA','person.svg', false, '14h54', '????????????', 'offline'),
    DialogueModel('Moustique ORTA','person.svg', false, '14h54', '????????????', 'offline'),
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
