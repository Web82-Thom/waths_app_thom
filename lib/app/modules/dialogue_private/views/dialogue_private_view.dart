import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_svg/flutter_svg.dart';

// import 'package:get_cli/common/utils/json_serialize/json_ast/tokenize.dart';
// import 'package:get_cli/common/utils/json_serialize/json_ast/json_ast.dart';
// import 'package:whats_app_thom/app/modules/dialogues/Models/dialogue_model.dart';
// import 'package:whats_app_thom/app/routes/app_pages.dart';
import 'package:emoji_picker/emoji_picker.dart';
import 'package:whats_app_thom/app/modules/dialogue_private/widgets/attach_button/icon_attach_button.dart';

import 'package:whats_app_thom/app/modules/dialogues/controllers/dialogues_controller.dart';
import 'package:whats_app_thom/app/routes/app_pages.dart';
import '../controllers/dialogue_private_controller.dart';

class DialoguePrivateView extends GetView<DialoguePrivateController> {

  final DialoguePrivateController dialoguePrivateController = Get.put(DialoguePrivateController(),);
  final DialoguesController dialoguesController = Get.put(DialoguesController(),);

  final int indexPassed = int.parse("${Get.parameters['indexPassed']}");
  // bool show = false;
  // FocusNode focusNode = FocusNode();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        leadingWidth: 30,
        titleSpacing: 2,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              child: SvgPicture.asset(
                dialoguesController.dialogues[indexPassed].isGroup
                    ? 'assets/icons/groups.svg'
                    : "assets/icons/person.svg",
                color: Colors.white,
                height: 30.0,
                width: 30.0,
              ),
              radius: 20.0,
              backgroundColor: Colors.blueGrey,
            ),
            SizedBox(
              width: 3.0,
            ),
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
                      dialoguesController.dialogues[indexPassed].name,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Vu aujourd\'hui à ' +
                          dialoguesController.dialogues[indexPassed].time,
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
        actions: [
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {},
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext ctx) {
              return [
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
                          return [
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Plus'),
                                  IconButton(
                                      onPressed: () {
                                        print('sous menu');
                                      },
                                      icon: Icon(
                                        Icons.arrow_right,
                                        color: Colors.grey,
                                      ))
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
                        Icon(
                          Icons.arrow_right,
                          color: Colors.grey,
                        ),
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: WillPopScope(
          child: Stack(
            children: [
              ListView(),
              Align(
                alignment: Alignment.bottomCenter,
                //bottom text field
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width - 55,
                          child: Card(
                            margin: EdgeInsets.only(
                              right: 2,
                              left: 2,
                              bottom: 8,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          // TEXTFORMFIELD                   
                            child: TextFormField(
                              controller: dialoguePrivateController.dialogueController,
                              focusNode: dialoguePrivateController.focusNode,
                              textAlignVertical: TextAlignVertical.center,
                              keyboardType: TextInputType.multiline,
                              maxLines: 5,
                              minLines: 1,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Votre méssage',
                                prefixIcon: IconButton(
                                  icon: Icon(Icons.emoji_emotions),
                                  onPressed: () {
                                    dialoguePrivateController.focusNode.unfocus();
                                    dialoguePrivateController.focusNode.canRequestFocus= !false;
                                    dialoguePrivateController.show = ! dialoguePrivateController.show;
                                  },
                                ),
                                suffixIcon: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconAttachButton(),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.camera_alt,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8,),
                          child: CircleAvatar(
                            backgroundColor: Theme.of(context).primaryColor,
                            radius: 25,
                            child: IconButton(
                              icon: Icon(Icons.mic, color: Colors.white,),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                    dialoguePrivateController.show ? emojiSelect() : Container(),
                  ],
                ),
              ),
            ],
          ),
          // Condition to close emoji container
          onWillPop: () {
            if (dialoguePrivateController.show) {
              dialoguePrivateController.show = false;
            } else {
              // Get.toNamed(Routes.HOME);
              Navigator.pop(context);
            }
            return Future.value(false);
          },
        ),
      )
    );
  }

  Widget bottomSheet() {
    return Container();
  }

  Widget emojiSelect() {
    return EmojiPicker(
      rows:4,
      columns: 7,
      buttonMode: ButtonMode.MATERIAL,
      numRecommended: 10,
      onEmojiSelected: (emoji, category) {
        print(emoji);
        dialoguePrivateController.dialogueController.text = dialoguePrivateController.dialogueController.text + emoji.emoji;
      },
    );
  }
}
