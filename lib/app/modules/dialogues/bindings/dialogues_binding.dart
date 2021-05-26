import 'package:get/get.dart';

import '../controllers/dialogues_controller.dart';

class DialoguesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DialoguesController>(
      () => DialoguesController(),
    );
  }
}
