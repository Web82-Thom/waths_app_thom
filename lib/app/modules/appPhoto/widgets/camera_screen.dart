import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:whats_app_thom/app/modules/appPhoto/controllers/app_photo_controller.dart';
import 'package:whats_app_thom/app/modules/appPhoto/views/photo_take_view.dart';

List<CameraDescription> cameras;

class CameraScreen extends StatefulWidget {
  CameraScreen({Key key}) : super(key: key);

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController _cameraController;
  final AppPhotoController appPhotoController = Get.put(AppPhotoController());

  // final appController = AppPhotoController();
  // Future<void> cameraValue;
  bool isRecord = false;
  String videoPath = '';
  @override
  void initState() {
    super.initState();
    _cameraController = CameraController(
      cameras[0],
      ResolutionPreset.values.first,
      // imageFormatGroup: ImageFormatGroup.yuv420,
    );
    appPhotoController.cameraValue = _cameraController.initialize();
  }

  @override
  void dispose() {
    super.dispose();
    _cameraController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: Stack(
        children: [
          FutureBuilder(
            future: appPhotoController.cameraValue,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return CameraPreview(_cameraController);
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
          Positioned(
            bottom: 0.0,
            child: Container(
              padding: EdgeInsets.only(
                top: 5,
                bottom: 5,
              ),
              color: Colors.black,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.flash_off,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      GestureDetector(
                        onLongPress: () async {
                          final path = join(
                              (await getTemporaryDirectory()).path,
                              "${DateTime.now()}.mp4");
                          await _cameraController.startVideoRecording();
                          setState(() {
                            isRecord = true;
                            videoPath = path;
                          });
                          print(path);
                          print('longpress for start record video');
                        },
                        onLongPressUp: () async {
                          final path = join(
                              (await getTemporaryDirectory()).path,
                              "${DateTime.now()}.mp4");
                          await _cameraController.stopVideoRecording();
                          setState(() {
                            isRecord = false;
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (builder) => PhotoTakeView(path),
                            ),
                          );
                          print('longpressup end video');
                        },
                        onTap: () {
                          if (!isRecord) {
                            takePhoto(context);
                          }
                        },
                        child: isRecord
                            ? Icon(
                                Icons.radio_button_on,
                                color: Colors.red,
                              )
                            : Icon(
                                Icons.panorama_fish_eye,
                                color: Colors.white,
                                size: 70,
                              ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.flip_camera_ios,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    'Appuie long pour la video, tap pour une photo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void takePhoto(BuildContext context) async {
    final path =
        join((await getTemporaryDirectory()).path, "${DateTime.now()}.png");
    await _cameraController.takePicture();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (builder) => PhotoTakeView(path),
      ),
    );
    print(path);
  }
}
