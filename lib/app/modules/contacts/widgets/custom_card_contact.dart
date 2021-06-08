import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whats_app_thom/app/modules/contacts/Models/contact_model.dart';
import 'package:whats_app_thom/app/modules/contacts/controllers/contacts_controller.dart';
import 'package:whats_app_thom/app/routes/app_pages.dart';

class CustomCardContacts extends StatelessWidget {

  final ContactsController contactsController = Get.put(ContactsController());

  CustomCardContacts(this.contactModel, this.indexData);
  final ContactModel contactModel;
  final int indexData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.toNamed(Routes.DIALOGUE_PRIVATE, parameters: {"indexPassed": "$indexData"});
      },
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.blueGrey[200],
          child: SvgPicture.asset(
            "assets/icons/person.svg",
            color: Colors.white,
            height: 35,
            width: 35,
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
          contactsController.contacts[indexData].status,
          style: TextStyle(
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}
