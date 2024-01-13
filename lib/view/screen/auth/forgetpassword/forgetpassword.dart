// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/constants/color.dart';
import 'package:untitled/view/widget/auth/custom_bottom_auth.dart';
import 'package:untitled/view/widget/auth/custom_text_body.dart';
import 'package:untitled/view/widget/auth/custom_text_form.dart';
import 'package:untitled/view/widget/auth/custom_text_title.dart';

import '../../../../controller/auth/forgetpassword_controller.dart';
import '../../../../core/function/validation.dart';

class AppForgetPassword extends StatelessWidget {
  const AppForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppForgetPassControllerImp controller = Get.put(AppForgetPassControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 1.0,
        title: Text(
          'Forget Password',
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(color: AppColor.primaryColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const AuthTextTitle(text: 'Check Email'),
              const SizedBox(
                height: 10.0,
              ),
              AuthTextBody(
                  text: "forgetPass".tr,),
              AuthTextFormFiled(
                valid: (val) {
                  return validText(val!, 5, 50, "email");
                },
                controller: controller.email,
                textLabel: 'Email',
                textHint: 'Enter Your Email',
                prefix: Icons.email_outlined,
                textInputType: TextInputType.emailAddress,
              ),
              AuthCustomBottom(
                text: 'Check',
                onPressed: () {
                  controller.goToVeryCode();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
