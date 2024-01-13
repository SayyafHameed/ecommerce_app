import 'package:flutter/material.dart';
import 'package:untitled/core/constants/color.dart';

class AuthCustomBottom extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const AuthCustomBottom({Key? key, required this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15.0),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        padding: const EdgeInsets.symmetric(vertical: 13.0),
        color: AppColor.primaryColor,
        onPressed: onPressed,
        textColor: Colors.white,
        child: Text(text),
      ),
    );
  }
}
