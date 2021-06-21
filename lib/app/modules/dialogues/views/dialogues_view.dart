import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:whats_app_thom/app/modules/dialogues/widgets/custom_dialogues.dart';
import 'package:whats_app_thom/app/routes/app_pages.dart';

import '../controllers/dialogues_controller.dart';

class DialoguesView extends GetView<DialoguesController> {
  final DialoguesController dialoguesController = Get.put(DialoguesController(),);
  final containerRadius = Radius.circular(30.0);
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.CONTACTS);
        },
        child: Icon(Icons.chat, color: Colors.white),
      ),
      body: Container(
        child:ListView.builder(
          itemCount: dialoguesController.dialogues.length,
          itemBuilder: (context, index) { 
            return CustomDialogues(dialoguesController.dialogues[index], index);
          },
        ),
      ),
    );
  }
}
