import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:whats_app_thom/app/modules/appPhoto/widgets/camera_screen.dart';
// import 'package:image_picker/image_picker.dart';
import '../controllers/app_photo_controller.dart';

class AppPhotoView extends GetView<AppPhotoController> {
  final AppPhotoController appPhotoController = Get.put(AppPhotoController());

  @override
  Widget build(BuildContext context) {
    return CameraScreen();
  }
}
