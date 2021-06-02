import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:whats_app_thom/app/modules/dialogues/Models/dialogue_model.dart';

class DialoguesController extends GetxController {

  get index => dialogues[index];

  final List<DialogueModel> dialogues = [
    DialogueModel('Thomas ORTA', 'person.svg', false, '14h29', 'Ola'),
    DialogueModel('Lisa ORTA', 'person.svg', false, '14h29', 'Que tale?'),
    DialogueModel('Sandrine ORTA', 'groups.svg', true, '14h15', 'Miuy bien ? y tu?'),
    DialogueModel('Noah ORTA', 'groups.svg', true, '14h15', 'Commo te liamas'),
    DialogueModel('M-G ORTA', 'person.svg', false, '14h29', '????????????'),
    DialogueModel('Gilles ORTA', 'person.svg', false, '14h54', '????????????'),
  ].obs;
  
  // final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    // fetchDialoguesModele();
  }
  // List<DialogueModel> dialogues;
  // void fetchDialoguesModele() async {
    
  //   await Future.delayed(Duration(seconds: 1));
  //   var dialogueModelResult = [
  //   DialogueModel('Thomas ORTA'.obs, 'person.svg'.obs, false.obs, '14h29'.obs, 'Ola'.obs),
  //   DialogueModel('Lisa ORTA'.obs, 'person.svg'.obs, false.obs, '14h29'.obs, 'Que tale?'.obs),
  //   DialogueModel('Sandrine ORTA'.obs, 'groups.svg'.obs, true.obs, '14h15'.obs, 'Miuy bien ? y tu?'.obs),
  //   DialogueModel('Noah ORTA'.obs, 'groups.svg'.obs, true.obs, '14h15'.obs, 'Commo te liamas'.obs),
  //   DialogueModel('M-G ORTA'.obs, 'person.svg'.obs, false.obs, '14h29'.obs, '????????????'.obs),
  //   ];
  //   dialogues.value = dialogueModelResult;
  // }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
