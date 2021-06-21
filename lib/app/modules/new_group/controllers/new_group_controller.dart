import 'package:get/get.dart';
import 'package:whats_app_thom/app/modules/contacts/Models/contact_model.dart';
import 'package:whats_app_thom/app/modules/new_group/Models/group_model.dart';

class NewGroupController extends GetxController {
  
  var group = List<ContactModel>.empty(growable: true).obs;
  // var isSelect= false.obs;
  
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
