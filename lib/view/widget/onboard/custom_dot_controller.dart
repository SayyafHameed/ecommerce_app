import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/onboard_controller.dart';
import '../../../core/constants/color.dart';
import '../../../data/data_source/static/static.dart';

class AppCustomDotController extends StatelessWidget {
  const AppCustomDotController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            onBoardingList.length,
            (index) => AnimatedContainer(
              margin: const EdgeInsets.only(right: 5),
              duration: const Duration(milliseconds: 900),
              width: controller.currentPage == index ? 20 : 5,
              height: 6,
              decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(10.0)),
            ),
          ),
        ],
      ),
    );
  }
}
