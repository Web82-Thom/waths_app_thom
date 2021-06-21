import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:whats_app_thom/app/modules/appPhoto/controllers/app_photo_controller.dart';
import 'package:whats_app_thom/app/modules/appPhoto/views/app_photo_view.dart';
import 'package:whats_app_thom/app/modules/appels/views/appels_view.dart';
import 'package:whats_app_thom/app/modules/dialogues/views/dialogues_view.dart';
import 'package:whats_app_thom/app/modules/statut/views/statut_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final HomeController homeController = Get.put(HomeController());
  final AppPhotoController appPhotoController = Get.put(AppPhotoController());
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text('WhatsApp'),
          backgroundColor: Color.fromRGBO(46, 139, 87, 1),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("recherche");
              },
            ),
            PopupMenuButton<String>(
              onSelected: (value) {
                print(value);
              },
              itemBuilder: (BuildContext ctx) {
                return 
                [
                  PopupMenuItem(
                    child: Text('Nouveau groupe'),
                    value: 'Nouveau groupe',
                  ),
                  PopupMenuItem(
                    child: Text('Nouvelle diffusion'),
                    value: 'Nouvelle diffusion',
                  ),
                  PopupMenuItem(
                    child: Text('WhatsApp  Web'),
                    value: 'WhatsApp  Web',
                  ),
                  PopupMenuItem(
                    child: Text('Message important'),
                    value: 'Message important',
                  ),
                  PopupMenuItem(
                    child: Text('Paramètres'),
                    value: 'paramètre',
                  ),
                ];
              },
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "DISC."),
              Tab(text: 'STATUS'),
              Tab(text: 'APPELS'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            AppPhotoView(),
            DialoguesView(),
            StatutView(),
            AppelsView(),
            // Get.toNamed('/statut');
          ],
        ),
      ),
    );
  }
}
