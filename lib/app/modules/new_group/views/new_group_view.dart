import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:whats_app_thom/app/modules/contacts/controllers/contacts_controller.dart';
import 'package:whats_app_thom/app/modules/contacts/widgets/custom_card_contact.dart';
import 'package:whats_app_thom/app/modules/new_group/Models/group_model.dart';
import 'package:whats_app_thom/app/modules/new_group/widgets/custom_card_group.dart';

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
      body: Obx(()=> Stack(
        children: [
          ListView.builder(
            itemCount: contactsController.contacts.length,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Container(
                  height: groupController.group.length > 0 ? 90 : 10,
                );
              }
              return InkWell(
                onTap: () {
                  // print(contactsController.contacts[index].toJson(),);
                  // print(contactsController.contacts.length);
                  // print(contactsController.contacts[index].id);
                  if(contactsController.contacts[index].select == true) {
                    //manque le setState
                    contactsController.contacts[index].select = false;
                    groupController.group.remove(contactsController.contacts[index]);

                    print(contactsController.contacts[index].select);
                    print(groupController.group.length);
                  }
                  else {
                    //manque le setState
                    contactsController.contacts[index].select = true;
                    groupController.group.add(contactsController.contacts[index]);

                    print(contactsController.contacts[index].select);
                    print(groupController.group.length);
                  }
                },
                child: CustomCardContacts(contactsController.contacts[index], index),
              );
            }
          ),
          // groupController.group.length > 0 ? 
          Column(
            children: [
              Container(
                height: 75,
                color: Colors.white,
                child: 
                GetX<ContactsController>(
                  // stream: null,
                  builder: (controller) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.contacts.length,
                      itemBuilder: (context, index) {
                        if(contactsController.contacts[index].select == true) {
                          return InkWell(
                            onTap: (){
                              print('clear');
                              groupController.group.remove(contactsController.contacts[index]);
                              contactsController.contacts[index].select = false;
                            },
                            child: CustomCardGroup(contactsController.contacts[index], index)
                          );
                        } else {
                          return Container();
                        }
                      },
                    );
                  },
                ),
              ),
              Divider(thickness: 1,)
            ],
          ),
          // : Container(),
        ],
      ),)
    );
  }
}
