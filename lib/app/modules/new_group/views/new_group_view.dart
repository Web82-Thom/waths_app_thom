import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:whats_app_thom/app/modules/contacts/controllers/contacts_controller.dart';
import 'package:whats_app_thom/app/modules/contacts/widgets/custom_card_contact.dart';
import 'package:whats_app_thom/app/modules/new_group/Models/group_model.dart';

import '../controllers/new_group_controller.dart';

class NewGroupView extends GetView<NewGroupController> {
  final NewGroupController groupController = Get.put(NewGroupController());

  final ContactsController  contactsController = Get.put(ContactsController());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nouveau groupe',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Ajouter des participants ',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.search,size: 26,),
          ),
        ],
      ),
      body: Obx(()=> Container(
        child: ListView.builder(
          itemCount: contactsController.contacts.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                // print(contactsController.contacts[index].toJson(),);
                // print(contactsController.contacts.length);
                // print(contactsController.contacts[index].id);
                if(contactsController.contacts[index].select == false) {
                  //manque le setState
                  contactsController.contacts[index].select = true;
                  groupController.group.add(contactsController.contacts[index]);
                  print(contactsController.contacts[index].select);
                }
                else {
                  //manque le setState
                  contactsController.contacts[index].select = false;
                  groupController.group.remove(contactsController.contacts[index]);
                  print(contactsController.contacts[index].select);
                }
              },
              child: CustomCardContacts(contactsController.contacts[index], index),
            );
          }
        ),
      ),)
    );
  }
}
