import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:whats_app_thom/app/modules/contacts/controllers/contacts_controller.dart';
import 'package:whats_app_thom/app/modules/new_group/widgets/custom_item_card_group.dart';
import 'package:whats_app_thom/app/modules/new_group/widgets/custom_card_group.dart';
import 'package:whats_app_thom/app/modules/new_group/controllers/new_group_controller.dart';

class NewGroupView extends GetView<NewGroupController> {
  final NewGroupController groupController = Get.put(NewGroupController());
  final ContactsController  contactsController = Get.put(ContactsController());
  
  @override
  Widget build(BuildContext context) {
    return Obx(
        ()=>Scaffold(
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
      body:
      //  Obx(
      //   ()=>
         Stack(
          children: [
            ListView.builder(
              itemCount: contactsController.contacts.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Container(
                    height: groupController.group.length == 0 ? 10 : 90,
                  );
                }
                return InkWell(
                  onTap: () {
                    if(contactsController.contacts[index-1].select == true) {
                      contactsController.contacts[index-1].select = false;
                      groupController.group.remove(contactsController.contacts[index-1]);
                      print(contactsController.contacts[index].select);
                      // print(contactsController.contacts[index-1].toJson());
                      print(' la groupe contient = ${groupController.group.length} contacts');
                    }
                    else {
                      contactsController.contacts[index-1].select = true;
                      groupController.group.add(contactsController.contacts[index-1]);
                      print(contactsController.contacts[index-1].select);
                      // groupController.group.remove(contactsController.contacts[index-1]);
                      print('id = ${contactsController.contacts[index-1].id}');
                      print(contactsController.contacts[index-1].toJson());
                      print(' le groupe contient = ${groupController.group.length} contacts');
                    }
                  },
                  child: CustomItemCardContacts(contactsController.contacts[index-1], index-1),
                );
              }
            ),
            Column(
              children: [
                // Contact display in group
                Container(
                  height: groupController.group.length == 0 ? 0 : 90,
                  color: Colors.yellow[100],
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: groupController.group.length,
                    itemBuilder: (context, index) {
                      // return CustomCardGroup(groupController.group[index], index);
                      if(contactsController.contacts[index].select == true) {
                        return InkWell(
                          onTap: (){
                            print('clear');
                            groupController.group.remove(contactsController.contacts[index]);
                            contactsController.contacts[index].select = false;
                            print(' le groupe contient = ${groupController.group.length} contacts');
                          },
                          child: 
                          CustomCardGroup(contactsController.contacts[index], index),
                        );
                      } else {
                        return Container();
                      }
                    },
                  ),
                ),
                Divider(
                  thickness: 1,
                )
              ],
            ),
          ],
        ),
      // ),
    ),
    );
  }
}
