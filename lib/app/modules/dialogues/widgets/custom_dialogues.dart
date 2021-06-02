import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:whats_app_thom/app/modules/dialogues/Models/dialogue_model.dart';
import 'package:whats_app_thom/app/modules/dialogues/controllers/dialogues_controller.dart';
import 'package:whats_app_thom/app/routes/app_pages.dart';

class CustomDialogues extends StatelessWidget {
  // DialoguesController controller = Get.find();
  final DialoguesController dialoguesController = Get.put(DialoguesController(),);

  CustomDialogues(this.dialogueModel);
  final DialogueModel dialogueModel;

  // var index = dialoguesController.dialogues[index];
  // var index = 3;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.DIALOGUE_PRIVATE); 
      },
      child:   
      Expanded(
          child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: dialoguesController.dialogues.length,
          itemBuilder: (context, index){
            return ListTile(
              
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                radius: 30,
                child: SvgPicture.asset(
                  dialoguesController.dialogues[index].isGroup 
                  ? 'assets/icons/groups.svg'
                  : "assets/icons/person.svg",
                  color: Colors.white,
                  height: 38.0,
                  width: 38.0,
                ),
                
              ),
              title: Text(
              //  dialoguesController.dialogues.first.name.string ,
              dialoguesController.dialogues[index].name,
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
                    dialoguesController.dialogues[index].currentMessage,
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              trailing: Text(dialoguesController.dialogues[index].time,),
            );
          },
          // children: [
            
            // Padding(
            //   padding: const EdgeInsets.only(
            //     right: 0.0,
            //     left: 80.0,
            //   ),
            //   child: Divider(
            //     thickness: 1,
            //   ),
            // ),
          // ],
        ),
      ),
    );
  }
}
