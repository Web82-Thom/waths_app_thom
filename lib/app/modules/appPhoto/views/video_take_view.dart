import 'dart:io';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:whats_app_thom/app/modules/appPhoto/controllers/app_photo_controller.dart';
import 'package:video_player/video_player.dart';

class VideoTakeView extends GetView<AppPhotoController> {
  final AppPhotoController appPhotoController = Get.put(AppPhotoController());

  VideoTakeView(
    this.path,
  );
  final String path;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.crop_rotate,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.emoji_emotions_outlined,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.title,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit,
              size: 30,
            ),
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 150,
              child: appPhotoController.controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio:
                          appPhotoController.controller.value.aspectRatio,
                      child: VideoPlayer(appPhotoController.controller),
                    )
                  : Container(),
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                color: Colors.black38,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                  maxLines: 6,
                  minLines: 1,
                  decoration: InputDecoration(
                    hintText: 'Ajouter un message',
                    prefixIcon: Icon(
                      Icons.add_photo_alternate,
                      size: 35,
                      color: Colors.white,
                    ),
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    suffixIcon: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.teal,
                      child: Icon(
                        Icons.check,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  // il doit i avoir un setState
                  appPhotoController.controller.value.isPlaying
                      ? appPhotoController.controller.pause()
                      : appPhotoController.controller.play();
                },
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black38,
                  child: Icon(
                    appPhotoController.controller.value.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
