import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whats_app_thom/app/modules/contacts/Models/contact_model.dart';
import 'package:whats_app_thom/app/modules/contacts/controllers/contacts_controller.dart';
import 'package:whats_app_thom/app/routes/app_pages.dart';

class CustomButtonContacts extends StatelessWidget {

  final ContactsController contactsController = Get.put(ContactsController());

  CustomButtonContacts(this.name, this.icon);
  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        // Get.toNamed(Routes.DIALOGUE_PRIVATE, parameters: {"indexPassed": "$indexData"});
      },
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.blue[200],
          child: Icon(icon,),
        ),
        title: Text(
          name,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
