import 'package:get/get.dart';

import '../controllers/dialogue_private_controller.dart';

class DialoguePrivateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DialoguePrivateController>(
      () => DialoguePrivateController(),
    );
  }
}
