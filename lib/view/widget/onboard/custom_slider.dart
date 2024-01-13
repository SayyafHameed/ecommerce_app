// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/onboard_controller.dart';
import '../../../data/data_source/static/static.dart';

class AppCustomSlider extends GetView<OnBoardingControllerImp> {
  const AppCustomSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value){
        controller.onPageChanged(value);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          Text(
            onBoardingList[i].title!,
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 80,
          ),
          Image.asset(onBoardingList[i].image!,
              width: 200, height: 230, fit: BoxFit.fill),
          const SizedBox(
            height: 80,
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[i].body!,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ],
      ),
    );
  }
}
