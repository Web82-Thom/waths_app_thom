import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:whats_app_thom/app/modules/dialogues/Models/dialogue_model.dart';
import 'package:whats_app_thom/app/modules/dialogues/controllers/dialogues_controller.dart';
import 'package:whats_app_thom/app/routes/app_pages.dart';

class CustomDialogues extends StatelessWidget {
  final DialoguesController dialoguesController = Get.put(DialoguesController(),);

  CustomDialogues(this.dialogueModel, this.indexData);
  final DialogueModel dialogueModel;
  final int indexData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.DIALOGUE_PRIVATE, parameters: {"indexPassed": "$indexData"}); 
      },
      child:   
      Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              radius: 30,
              child: SvgPicture.asset(
                dialoguesController.dialogues[indexData].isGroup 
                ? 'assets/icons/groups.svg'
                : "assets/icons/person.svg",
                color: Colors.white,
                height: 38.0,
                width: 38.0,
              ),
            ),
            title: Text(
            dialoguesController.dialogues[indexData].name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(
                  width: 3.0,
                ),
                Text(
                  dialoguesController.dialogues[indexData].currentMessage,
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            trailing: Text(dialoguesController.dialogues[indexData].time,),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 0.0,
              left: 80.0,
            ),
            child: Divider(
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
