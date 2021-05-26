import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:whats_app_thom/app/modules/dialogues/views/dialogues_tile.dart';
// import 'package:whats_app_thom/app/modules/dialogues/views/story_dialogues.dart';

import '../controllers/dialogues_controller.dart';

class DialoguesView extends GetView<DialoguesController> {
  final imgUrl = [
    "https://randomuser.me/api/portraits/men/86.jpg",
    "https://randomuser.me/api/portraits/men/86.jpg",
    "https://randomuser.me/api/portraits/men/86.jpg",
    "https://randomuser.me/api/portraits/men/86.jpg",
    "https://randomuser.me/api/portraits/men/86.jpg",
    "https://randomuser.me/api/portraits/men/86.jpg",
    "https://randomuser.me/api/portraits/men/86.jpg",
    "https://randomuser.me/api/portraits/men/86.jpg",
    "https://randomuser.me/api/portraits/men/86.jpg",
  ];

  final containerRadius = Radius.circular(30.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.chat, color: Colors.white),
      ),
      body:
      Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
                child: ListView(
                  children: [
                    dialoguesTile(imgUrl[0],'Thom ORTA','Salut comment va?','26/05/21',false,),
                    dialoguesTile(imgUrl[1],'Lisa ORTA','CC','26/05/21',true,),
                    dialoguesTile(imgUrl[2],'Noah ORTA','toujours présent et à jamais','26/05/21',true,),
                    dialoguesTile(imgUrl[3],'Sandrine ORTA','c\'est l\'apéro!!','26/05/21',true,),
                    dialoguesTile(imgUrl[4],'Méllisa ORTA','J\'ai faim','26/05/21',true,),
                    dialoguesTile(imgUrl[5],'Virgine ORTA','A quand le soleil?','26/05/21',true,),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
