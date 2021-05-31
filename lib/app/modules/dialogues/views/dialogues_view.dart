import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:whats_app_thom/app/modules/dialogue_private/views/dialogue_private_view.dart';
import 'package:whats_app_thom/app/modules/dialogues/Models/dialogue_model.dart';
import 'package:whats_app_thom/app/modules/dialogues/widgets/custom_dialogues.dart';
import 'package:whats_app_thom/app/routes/app_pages.dart';

import '../controllers/dialogues_controller.dart';

class DialoguesView extends GetView<DialoguesController> {
  DialoguesController dialoguesController = Get.put(DialoguesController(),);
  DialoguesView(Key key) : super (key: key);
  final containerRadius = Radius.circular(30.0);

  List<DialogueModel> dialogues = [
    DialogueModel('Thomas ORTA', 'person.svg', false, '14h29', 'Ola'),
    DialogueModel('Lisa ORTA', 'person.svg', false, '14h29', 'Que tale?'),
    DialogueModel('Sandrine ORTA', 'groups.svg', true, '14h15', 'Miuy bien ? y tu?'),
    DialogueModel('Noah ORTA', 'groups.svg', true, '14h15', 'Commo te liamas'),
    DialogueModel('M-G ORTA', 'person.svg', false, '14h29', '????????????'),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('new message');
        },
        child: Icon(Icons.chat, color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: dialogues.length,
        itemBuilder: (context, index) => CustomDialogues(dialogues[index]),
      ),
    );
  }
}
