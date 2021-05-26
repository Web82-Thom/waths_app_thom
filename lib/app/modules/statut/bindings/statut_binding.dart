import 'package:get/get.dart';

import '../controllers/statut_controller.dart';

class StatutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StatutController>(
      () => StatutController(),
    );
  }
}
