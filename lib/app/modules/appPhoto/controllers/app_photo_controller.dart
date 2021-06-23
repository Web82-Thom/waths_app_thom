import 'dart:io';

import 'package:camera/camera.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:video_player/video_player.dart';

class AppPhotoController extends GetxController {
 VideoPlayerController controller;
  CameraController cameraController;

 Future<void> cameraValue;
 String path= '';
//  void pathVideo () async {
//     final path = join(
//       (await getTemporaryDirectory()).path,"${DateTime.now()}.mp4");
//       // await _cameraController.startVideoRecording();
// }

  @override
  void onInit() {
    super.onInit();
    controller = VideoPlayerController.file(File(path));
    
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
