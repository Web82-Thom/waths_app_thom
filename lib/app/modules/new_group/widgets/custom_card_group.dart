import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:whats_app_thom/app/modules/contacts/Models/contact_model.dart';
import 'package:whats_app_thom/app/modules/contacts/controllers/contacts_controller.dart';

class CustomCardGroup extends StatelessWidget {
  final ContactsController contactsController = Get.put(ContactsController());
//  CustomCardGroup({ Key key }) : super(key: key);
  CustomCardGroup(this.dialogueModel, this.indexData);
  final ContactModel dialogueModel;
  final int indexData;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ Stack(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blueGrey[200],
                    child: SvgPicture.asset(
                      "assets/icons/person.svg",
                      color: Colors.white,
                      height: 35,
                      width: 35,
                    ),
                  ),
                  contactsController.contacts[indexData].select ?
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 11,
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.clear,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  )
                  : Container(),
                ],
              ),

            SizedBox(height: 3,),
              Text(
                '${contactsController.contacts[indexData].name}',
                style: TextStyle(
                  fontSize: 10.0,
                ),
              ),
            ],
          ),
        );
  }
}
