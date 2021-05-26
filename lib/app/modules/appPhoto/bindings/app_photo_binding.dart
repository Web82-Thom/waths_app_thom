import 'package:get/get.dart';

import '../controllers/app_photo_controller.dart';

class AppPhotoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppPhotoController>(
      () => AppPhotoController(),
    );
  }
}
