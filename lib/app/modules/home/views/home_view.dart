import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:whats_app_thom/app/modules/appPhoto/views/app_photo_view.dart';
import 'package:whats_app_thom/app/modules/appels/views/appels_view.dart';
import 'package:whats_app_thom/app/modules/dialogues/views/dialogues_view.dart';
import 'package:whats_app_thom/app/modules/statut/views/statut_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
          child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text('WhatsApp'),
          backgroundColor: Color.fromRGBO(46, 139, 87, 1),
          actions: [
            IconButton(
              onPressed: () {print("recherche");}, 
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {print("menu");}, 
              icon: Icon(Icons.more_vert),
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
