import 'package:get/get.dart';
import 'package:flutter/material.dart ';
import 'package:socket_io_client/socket_io_client.dart' as IO;


class DialoguePrivateController extends GetxController {

  bool show = false;
  FocusNode focusNode = FocusNode();
  IO.Socket socket ;
  TextEditingController dialogueController = TextEditingController();

  //methode socket connection
  void connect(){
    socket = IO.io(
      "http://192.168.1.14:5000", <String, dynamic>{
      "transports" : ["websocket"],
      "autoConnect" : true,
      },
    );
    socket.connect();
    socket.emit('/test', 'hello world');


    socket.onConnect((data) => print(data));
    print('connection : ${socket.connected}');
  }

  @override
  void onInit() {
    super.onInit();
    connect();
    //pour le display du conatiner emoji
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        show = false;
      };
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
