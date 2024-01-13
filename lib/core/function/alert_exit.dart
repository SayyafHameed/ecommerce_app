import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> appAlertExit(){
  Get.defaultDialog(
    title: "warning".tr,
    middleText: "exitApp".tr,
    actions: [
      ElevatedButton(onPressed: (){exit(0);}, child: const Text('Confirm')),
      ElevatedButton(onPressed: (){Get.back();}, child: const Text('Cancel')),
    ],
  );
  return Future.value(true);
}