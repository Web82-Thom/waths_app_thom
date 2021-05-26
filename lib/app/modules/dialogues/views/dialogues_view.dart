import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:whats_app_thom/app/modules/dialogues/views/chat_tile.dart';
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
      body: Column(
        children: [
          // Container(
          //   height: 100.0,
          //   color: Color.fromRGBO(46, 139, 87, 1),
          //   child: Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: 12.0),
          //     child: ListView(
          //       scrollDirection: Axis.horizontal,
          //       children: [
          //         storyButton(imgUrl[0], 'Thom ORTA'),
          //         storyButton(imgUrl[1], 'Lisa ORTA'),
          //         storyButton(imgUrl[2], 'Noah ORTA'),
          //         storyButton(imgUrl[4], 'Sandrine ORTA'),
          //         storyButton(imgUrl[5], 'Jean ORTA'),
          //         storyButton(imgUrl[6], 'Virginie ORTA'),
          //         storyButton(imgUrl[7], 'Melissa ORTA'),
          //         storyButton(imgUrl[8], 'Sandrine ORTA'),
          //       ],
          //     ),
          //   ),
          // ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.only(
                //   topLeft: containerRadius,
                //   topRight: containerRadius,
                // ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
                child: ListView(
                  children: [
                    chatTile(imgUrl[0],'Thom ORTA','Salut comment va?','26/05/21',false,),
                    chatTile(imgUrl[1],'Lisa ORTA','CC','26/05/21',true,),
                    chatTile(imgUrl[2],'Noah ORTA','toujours présent et à jamais','26/05/21',true,),
                    chatTile(imgUrl[3],'Sandrine ORTA','c\'est l\'apéro!!','26/05/21',true,),
                    chatTile(imgUrl[4],'Méllisa ORTA','J\'ai faim','26/05/21',true,),
                    chatTile(imgUrl[5],'Virgine ORTA','A quand le soleil?','26/05/21',true,),
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
