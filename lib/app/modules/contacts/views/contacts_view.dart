import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:whats_app_thom/app/modules/contacts/widgets/custom_card_contact.dart';
import 'package:whats_app_thom/app/modules/dialogues/controllers/dialogues_controller.dart';

import '../controllers/contacts_controller.dart';

class ContactsView extends GetView<ContactsController> {

  final ContactsController contactsController = Get.put(ContactsController());

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
      body: ListView.builder(
        itemCount: contactsController.contacts.length,
        itemBuilder: (context, index) => CustomCardContacts(contactsController.contacts[index], index),
      ),
    );
  }
}
