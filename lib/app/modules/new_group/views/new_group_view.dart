import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:whats_app_thom/app/modules/contacts/Models/contact_model.dart';
import 'package:whats_app_thom/app/modules/contacts/controllers/contacts_controller.dart';
import 'package:whats_app_thom/app/modules/contacts/widgets/custom_card_contact.dart';
import 'package:whats_app_thom/app/modules/new_group/Models/group_model.dart';
import 'package:whats_app_thom/app/modules/new_group/widgets/custom_card_group.dart';
import 'package:whats_app_thom/app/routes/app_pages.dart';

import '../controllers/new_group_controller.dart';

class NewGroupView extends GetView<NewGroupController> {
  final NewGroupController groupController = Get.put(NewGroupController());

  final ContactsController  contactsController = Get.put(ContactsController());

  var group = List.empty(growable: true).obs;
  
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
            onPressed: (){
              Get.toNamed(Routes.HOME);
            },
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
                  contactsController.contacts[index].isSelected.toggle();
                  contactsController.contacts[index].isSelected.value
                  ? print("YES !")
                  : print("NO !");

                  contactsController.contacts[index].isSelected.value
                      ? group.add(contactsController.contacts[index])
                      : group.remove(contactsController.contacts[index]);

                  /*if(contactsController.contacts[index].select == true) {
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
                  }*/
                },
                child: CustomCardContacts(contactsController.contacts[index], index),
              );
            }
          ),
          // groupController.group.length > 0 ? 
          /*Container(
              height: 75,
              color: Colors.lightBlueAccent,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
              itemCount: group.length,
                itemBuilder: (context, index) {
                return CustomCardGroup(group[index], index);
                }
            )
          ),*/
          Container(
            height: 75,
            color: Colors.blue,
            child:   ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: group.length,
                      itemBuilder: (context, index) {
                        return CustomCardGroup(group[index], index);
                        /*if(contactsController.contacts[index].isSelected == true) {
                          return InkWell(
                            onTap: (){
                              print('clear');
                              group.remove(contactsController.contacts[index]);
                              contactsController.contacts[index].select = false;
                            },
                            child: CustomCardGroup(group[index], index)
                          );
                        } else {
                          return Container();
                        }*/
                      },
                    ),
            ),


          Divider(thickness: 1,),
          // : Container(),
        ],
      ),)
    );
  }
}
