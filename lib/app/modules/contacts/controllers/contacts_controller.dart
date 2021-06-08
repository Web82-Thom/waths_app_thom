import 'package:get/get.dart';
import 'package:whats_app_thom/app/modules/contacts/Models/contact_model.dart';

class ContactsController extends GetxController {

  final List<ContactModel> contacts = [
    ContactModel('Thomas ORTA', 'online'),
    ContactModel('Lisa ORTA', 'offline'),
    ContactModel('Sandrine ORTA','offline'),
    ContactModel('Noah ORTA', 'online'),
    ContactModel('M-G ORTA', 'offline'),
    ContactModel('Gilles ORTA', 'offline'),
    ContactModel('J-m ORTA', 'offline'),
    ContactModel('Melissa ORTA', 'offline'),
    ContactModel('Marie ORTA', 'offline'),
    ContactModel('Kate ORTA', 'offline'),
    ContactModel('Moustique ORTA', 'offline'),
  ];

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
