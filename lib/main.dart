import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:whats_app_thom/app/modules/dialogues/views/dialogues_view.dart';
import 'package:whats_app_thom/app/modules/home/views/home_view.dart';

import 'app/routes/app_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: [
        GetPage(name: '/', page: () =>MyApp()),
        GetPage(name: '/home', page: () =>HomeView()),
        GetPage(name: '/discusions', page: () =>DialoguesView()),
      ],
      theme: ThemeData(
      primarySwatch: Colors.blue,
      backgroundColor: Color(0xFF177767),
      accentColor: Colors.deepPurple,
      accentColorBrightness: Brightness.dark,
      ),
      
    );
  }
}

    
  

