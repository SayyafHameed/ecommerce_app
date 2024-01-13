import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/onboard_controller.dart';
import 'package:untitled/view/widget/onboard/custom_button.dart';
import 'package:untitled/view/widget/onboard/custom_dot_controller.dart';
import 'package:untitled/view/widget/onboard/custom_slider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SafeArea(
          child: Column(
            children: [
              const Expanded(
                flex: 3,
                child: AppCustomSlider(),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: const [
                    AppCustomDotController(),
                    Spacer(flex: 2,),
                    AppCustomButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
