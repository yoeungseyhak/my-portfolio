import 'dart:async';

import 'package:get/get.dart';

// ignore: non_constant_identifier_names
// final AppTrans = AppLocalize.of(Get.context!);

class AppService extends GetxService {

  Future<AppService> init() async {
    //Initial controller
    await _initialController();

    return this;
  }

  FutureOr _initialController() {
    //
  }
}
