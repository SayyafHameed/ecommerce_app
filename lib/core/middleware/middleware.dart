import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/constants/routes.dart';
import 'package:untitled/core/services/services.dart';

class AppMiddleWare extends GetMiddleware
{
  @override
  int? get priority => 1;

  AppServices appServices = Get.find();
  @override
  RouteSettings? redirect (String? route){
    if(appServices.shardPreferences.getString("onboard") == "1"){
      return const RouteSettings(name: AppRoute.login);
    }
  }
}