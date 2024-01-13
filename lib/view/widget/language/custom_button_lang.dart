import 'package:flutter/material.dart';
import 'package:untitled/core/constants/color.dart';

class AppButtonLanguage extends StatelessWidget {

  final String textButton;
  final void Function()? onPress;

  const AppButtonLanguage({Key? key, required this.textButton, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 120.0),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: MaterialButton(
        color: AppColor.primaryColor,
        textColor: Colors.white,
        onPressed: onPress,
        child: Text(textButton, style: const TextStyle(fontWeight: FontWeight.bold),),
      ),
    );
  }
}
