import 'package:flutter/material.dart';

import '../../../core/constants/color.dart';

class AuthSignInOrSignOn extends StatelessWidget {
  final String textOne;
  final String textTwo;
  final void Function() onTap;
  const AuthSignInOrSignOn({Key? key, required this.textOne, required this.textTwo, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textOne),
        InkWell(
          onTap: onTap,
          child: Text(textTwo, style: const TextStyle(fontWeight: FontWeight.bold, color: AppColor.primaryColor),),
        ),
      ],
    );
  }
}
