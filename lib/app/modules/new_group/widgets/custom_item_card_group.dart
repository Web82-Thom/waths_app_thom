import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whats_app_thom/app/modules/contacts/Models/contact_model.dart';
import 'package:whats_app_thom/app/modules/contacts/controllers/contacts_controller.dart';

class CustomItemCardContacts extends StatelessWidget {
  final ContactsController contactsController = Get.put(ContactsController());

  CustomItemCardContacts(this.contactModel, this.indexData);
  final ContactModel contactModel;
  final int indexData;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        child: Stack(
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
            Obx(
              ()=> contactsController.contacts[indexData].select ?  
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 11,
                  backgroundColor: Colors.teal,
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ) : Container(),
            ),
          ],
        ),
      ),
      title: Text(
          contactsController.contacts[indexData].name,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
      ),
      subtitle: Text(
        '${contactsController.contacts[indexData].status}', //  - id ${contactsController.contacts[indexData].id}
        style: TextStyle(
          fontSize: 10,
        ),
      ),
    ); 
  }
}
