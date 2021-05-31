import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:whats_app_thom/app/modules/appPhoto/bindings/app_photo_binding.dart';
import 'package:whats_app_thom/app/modules/appPhoto/views/app_photo_view.dart';
import 'package:whats_app_thom/app/modules/appels/bindings/appels_binding.dart';
import 'package:whats_app_thom/app/modules/appels/views/appels_view.dart';
import 'package:whats_app_thom/app/modules/dialogue_private/bindings/dialogue_private_binding.dart';
import 'package:whats_app_thom/app/modules/dialogue_private/views/dialogue_private_view.dart';
import 'package:whats_app_thom/app/modules/dialogues/Models/dialogue_model.dart';
import 'package:whats_app_thom/app/modules/dialogues/bindings/dialogues_binding.dart';
import 'package:whats_app_thom/app/modules/dialogues/views/dialogues_view.dart';
import 'package:whats_app_thom/app/modules/home/bindings/home_binding.dart';
import 'package:whats_app_thom/app/modules/home/views/home_view.dart';
import 'package:whats_app_thom/app/modules/statut/bindings/statut_binding.dart';
import 'package:whats_app_thom/app/modules/statut/views/statut_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DIALOGUES,
      page: () => DialoguesView(),
      binding: DialoguesBinding(),
    ),
    GetPage(
      name: _Paths.STATUT,
      page: () => StatutView(),
      binding: StatutBinding(),
    ),
    GetPage(
      name: _Paths.APPELS,
      page: () => AppelsView(),
      binding: AppelsBinding(),
    ),
    GetPage(
      name: _Paths.APP_PHOTO,
      page: () => AppPhotoView(),
      binding: AppPhotoBinding(),
    ),
    GetPage(
      name: _Paths.DIALOGUE_PRIVATE,
      page: () => DialoguePrivateView(),
      binding: DialoguePrivateBinding(),
    ),
  ];
}
