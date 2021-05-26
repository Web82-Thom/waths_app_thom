import 'package:get/get.dart';

import '../controllers/appels_controller.dart';

class AppelsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppelsController>(
      () => AppelsController(),
    );
  }
}
