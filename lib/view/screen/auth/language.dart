// ignore_for_file: deprecated_member_use, unnecessary_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:untitled/core/constants/routes.dart';
import 'package:untitled/core/localization/change_locale.dart';

import '../../widget/language/custom_button_lang.dart';

class AppLanguage extends GetView<AppChangeLocaleController> {
  const AppLanguage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "chooseLang".tr,
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(
              height: 20.0,
            ),
            AppButtonLanguage(
              textButton: 'Arabic',
              onPress: () {
                controller.changeLang("ar");
                Get.toNamed(AppRoute.boarding);
              },
            ),
            AppButtonLanguage(
              textButton: 'English',
              onPress: () {
                controller.changeLang("en");
                Get.toNamed(AppRoute.boarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
