import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:whats_app_thom/app/modules/contacts/widgets/custom_button_contact.dart';
import 'package:whats_app_thom/app/modules/contacts/widgets/custom_card_contact.dart';
import 'package:whats_app_thom/app/routes/app_pages.dart';

import '../controllers/contacts_controller.dart';

class ContactsView extends GetView<ContactsController> {

  final ContactsController contactsController = Get.put(ContactsController());
  // ContactsView(this.indexData);
  // final int indexData;


  // final int indexPassed = int.parse("${Get.parameters['indexPassed']}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contacts',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Text(
              '${contactsController.contacts.length} Contacts',
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
         PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext ctx) {
              return [
                PopupMenuItem(
                  child: Text('Inviter un(e) ami(e)', style: TextStyle(fontSize: 15,)),
                  value: 'inviteFriend',
                ),
                PopupMenuItem(
                  child: Text('Contacts', style: TextStyle(fontSize: 15,)),
                  value: 'Contacts',
                ),
                PopupMenuItem(
                  child: Text('Actualiser', style: TextStyle(fontSize: 15,)),
                  value: 'refresh',
                ),
                PopupMenuItem(
                  child: Text('Aide', style: TextStyle(fontSize: 15,)),
                  value: 'help',
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: contactsController.contacts.length + 2,
          itemBuilder: (context, index) {
            if(index == 0) {
              return InkWell(
                onTap: (){
                  Get.toNamed(Routes.NEW_GROUP);
                },
                child: CustomButtonContacts('Nouveau groupe', Icons.group));
            } else if (index == 1) {
              return CustomButtonContacts('Nouveau contact', Icons.person_add);
            } 
            return 
            InkWell(
              onTap: (){
                // Get.toNamed(Routes.DIALOGUE_PRIVATE, parameters: {"indexPassed": "$indexData"});
              },
              child: 
              CustomCardContacts(contactsController.contacts[index - 2], index-2)
            );
          }
          // => CustomCardContacts(contactsController.contacts[index-], index),
        ),
      ),
    );
  }
}
