import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller/onboard_controller.dart';
import '../../../core/constants/color.dart';

class AppCustomButton extends GetView<OnBoardingControllerImp> {
  const AppCustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30.0),
      height: 40.0,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 100.0,),

        onPressed: (){
          controller.next();
        },
        color: AppColor.primaryColor,
        textColor: Colors.white,
        shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        child:  const Text('Continue'),

      ),
    );
  }
}
