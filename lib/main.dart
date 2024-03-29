import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:whats_app_thom/app/modules/appPhoto/views/app_photo_view.dart';
import 'package:whats_app_thom/app/modules/appels/views/appels_view.dart';
import 'package:whats_app_thom/app/modules/contacts/views/contacts_view.dart';
import 'package:whats_app_thom/app/modules/dialogue_private/views/dialogue_private_view.dart';
import 'package:whats_app_thom/app/modules/dialogues/views/dialogues_view.dart';
import 'package:whats_app_thom/app/modules/home/views/home_view.dart';
import 'package:whats_app_thom/app/modules/new_group/views/new_group_view.dart';
import 'package:whats_app_thom/app/modules/statut/views/statut_view.dart';

import 'app/routes/app_pages.dart';

// void main() => runApp(MyApp());
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page: () =>MyApp()),
        GetPage(name: '/home', page: () =>HomeView()),
        GetPage(name: '/app-photo', page: () =>AppPhotoView()),
        GetPage(name: '/dialogues', page: () =>DialoguesView()),
        GetPage(name: '/status', page: () =>StatutView()),
        GetPage(name: '/appels', page: () =>AppelsView()),
        GetPage(name: '/dialogue-private', page: () =>DialoguePrivateView()),
        GetPage(name: '/contacts', page: () =>ContactsView()),
        GetPage(name: '/new-group', page: () =>NewGroupView()),
      ],
      theme: ThemeData(
        fontFamily: 'OpenSans',
        primaryColor: Color(0xFF075E54),
        primarySwatch: Colors.blue,
        backgroundColor: Color(0xFF177767),
        accentColor: Colors.green,
        accentColorBrightness: Brightness.dark,
      ),
      
    );
  }
}