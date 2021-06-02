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
  final containerRadius = Radius.circular(30.0);
  // DialoguesController dialoguesController = Get.find();
  
  // final int index;
  // DialoguesView(this.index);
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('new message');
        },
        child: Icon(Icons.chat, color: Colors.white),
      ),
      body: Container(
        child: 
            ListView.builder(
          itemCount: dialoguesController.dialogues.length,
          itemBuilder: (context, index) { 
            return CustomDialogues(dialoguesController.dialogues[index]);
           
          },
          ),
        
      ),
    );
  }
}
