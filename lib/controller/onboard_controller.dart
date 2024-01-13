import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/services/services.dart';
import 'package:untitled/data/data_source/static/static.dart';

import '../core/constants/routes.dart';

abstract class OnBoardingController extends GetxController
{
  next();
  onPageChanged(index);
}

class OnBoardingControllerImp extends OnBoardingController
{
  late PageController pageController;

  int currentPage = 0;

  AppServices appServices = Get.find();

  @override
  next() {
    currentPage++;

    if(currentPage > onBoardingList.length -1){
      appServices.shardPreferences.setString("onboard", "1");
      Get.offAllNamed(AppRoute.login);
    }else{
      pageController.animateToPage(currentPage, duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }

  }

  @override
  onPageChanged(index) {
   currentPage = index;
   update();
  }

  @override
  void onInit(){
    pageController = PageController();
    super.onInit();
  }
}