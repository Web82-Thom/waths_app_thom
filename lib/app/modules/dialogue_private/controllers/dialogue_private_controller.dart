import 'package:get/get.dart';
import 'package:whats_app_thom/app/modules/dialogues/Models/dialogue_model.dart';

class DialoguePrivateController extends GetxController {
  //TODO: Implement DialoguePrivateController
  List<DialogueModel> dialogues = [
    DialogueModel('Thomas ORTA', 'person.svg', false, '14h29', 'Ola'),
    DialogueModel('Lisa ORTA', 'person.svg', false, '14h29', 'Que tale?'),
    DialogueModel('Sandrine ORTA', 'groups.svg', true, '14h15', 'Miuy bien ? y tu?'),
    DialogueModel('Noah ORTA', 'groups.svg', true, '14h15', 'Commo te liamas'),
    DialogueModel('M-G ORTA', 'person.svg', false, '14h29', '????????????'),
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
