import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:whats_app_thom/app/modules/dialogues/Models/dialogue_model.dart';
import 'package:whats_app_thom/app/routes/app_pages.dart';

import '../controllers/dialogue_private_controller.dart';

class DialoguePrivateView extends GetView<DialoguePrivateController> {
  DialoguePrivateController dialoguesPrivateController = Get.put(DialoguePrivateController(),);
  // DialoguePrivateView(Key key,this.dialogueModel);
  // final DialogueModel dialogueModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 30,
        titleSpacing: 2,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(child: SvgPicture.asset(
              // dialogueModel.isGroup ?
              // 'assets/icons/groups.svg':
                "assets/icons/person.svg",
              
              color: Colors.white,
              height: 30.0,
              width: 30.0,
            ),radius:20.0, backgroundColor: Colors.blueGrey,),
            SizedBox(width: 3.0,),
            InkWell(
              onTap: () {
                print('inkWell');
              },
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Prenom', 
                      style: TextStyle(
                        fontSize: 15.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Vu aujourd\'hui à 14h02', 
                      style: TextStyle(
                        fontSize: 8.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        actions : [
          IconButton(icon: Icon(Icons.videocam), onPressed: () {},),
          IconButton(icon: Icon(Icons.call), onPressed: () {},),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext ctx) {
              return 
              [
                PopupMenuItem(
                  child: Text('Afficher contact'),
                  value: 'Afficher contact',
                ),
                PopupMenuItem(
                  child: Text('Médias, liens et documents'),
                  value: 'Médias, liens et documents',
                ),
                PopupMenuItem(
                  child: Text('Rechercher'),
                  value: 'Rechercher',
                ),
                PopupMenuItem(
                  child: Text('Notifications en mode solencieux'),
                  value: 'Notifications en mode solencieux',
                ),
                PopupMenuItem(
                  child: Text('Fond d\'écran'),
                  value: 'Fond d\'écran',
                ),
                PopupMenuItem(
                  child: InkWell(
                    onTap: () {
                      PopupMenuButton<String>(
                        onSelected: (value) {
                          print(value);
                        },
                        itemBuilder: (BuildContext ctx) {
                          return 
                          [
                            PopupMenuItem(
                              child: Text('Afficher contact'),
                              value: 'Afficher contact',
                            ),
                            PopupMenuItem(
                              child: Text('Médias, liens et documents'),
                              value: 'Médias, liens et documents',
                            ),
                            PopupMenuItem(
                              child: Text('Rechercher'),
                              value: 'Rechercher',
                            ),
                            PopupMenuItem(
                              child: Text('Notifications en mode solencieux'),
                              value: 'Notifications en mode solencieux',
                            ),
                            PopupMenuItem(
                              child: Text('Fond d\'écran'),
                              value: 'Fond d\'écran',
                            ),
                            PopupMenuItem(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Plus'),
                                  IconButton(
                                    onPressed: () {
                                      print('sous menu');
                                    }, icon: Icon(Icons.arrow_right, color: Colors.grey,))
                                ],
                              ),
                              value: 'Plus',
                            ),
                          ];
                        },
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Plus'),
                        Icon(Icons.arrow_right, color: Colors.grey,),
                      ],
                    ),
                  ),
                  value: 'Plus',
                ),
              ];
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'DialoguePrivateView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
