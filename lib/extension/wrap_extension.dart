import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension WrapExtension on Widget {
  Widget get dismissKeyboard {
    return GestureDetector(
      child: this,
      onTap: () {
        Get.focusScope?.unfocus();
      },
    );
  }
}
