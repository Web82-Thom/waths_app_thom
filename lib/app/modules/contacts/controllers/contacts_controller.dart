import 'package:get/get.dart';
import 'package:whats_app_thom/app/modules/contacts/Models/contact_model.dart';

class ContactsController extends GetxController {

  final List<ContactModel> contacts = [
    ContactModel(0,'Thomas ORTA', 'person.svg', false, '14h29', 'Ola', 'online', true),
    ContactModel(1,'Lisa ORTA', 'person.svg', false, '14h29', 'Que tale?', 'offline', false),
    ContactModel(2,'Sandrine ORTA', 'groups.svg', true, '14h15', 'Miuy bien ? y tu?', 'offline', false),
    ContactModel(3,'Noah ORTA', 'groups.svg', true, '14h15', 'Commo te liamas', 'online', false),
    ContactModel(4,'M-G ORTA', 'person.svg', false, '14h29', '????????????', 'offline', false),
    ContactModel(5,'Gilles ORTA', 'person.svg', false, '14h54', '????????????', 'offline', false),
    ContactModel(6,'J-m ORTA', 'person.svg', false, '14h54', '????????????','offline', false),
    ContactModel(7,'Melissa ORTA','person.svg', false, '14h54', '????????????', 'offline', false),
    ContactModel(8,'Marie ORTA','person.svg', false, '14h54', '????????????', 'offline', false),
    ContactModel(9,'Kate ORTA','person.svg', false, '14h54', '????????????', 'offline', false),
    ContactModel(10,'Moustique ORTA','person.svg', false, '14h54', '????????????', 'offline', false),
  ].obs;

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
}
