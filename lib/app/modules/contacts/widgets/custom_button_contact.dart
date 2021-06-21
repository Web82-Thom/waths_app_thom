import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whats_app_thom/app/modules/contacts/controllers/contacts_controller.dart';

class CustomButtonContacts extends StatelessWidget {

  final ContactsController contactsController = Get.put(ContactsController());

  CustomButtonContacts(this.name, this.icon);
  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
    );
  }
}
