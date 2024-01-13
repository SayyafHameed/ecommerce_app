import 'package:flutter/material.dart';

class AuthTextFormFiled extends StatelessWidget {
  final String textLabel;
  final String textHint;
  final IconData prefix;
  final TextInputType textInputType;
  final TextEditingController controller;
  final String? Function(String?) valid;
  final IconData? suffix;
  final bool? obscureText;
  final void Function()? onTapIcon;

  const AuthTextFormFiled({Key? key, required this.textLabel, required this.textHint, required this.prefix, required this.textInputType, required this.controller, required this.valid, this.suffix, this.obscureText, this.onTapIcon, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      child: TextFormField(
        obscureText: obscureText == null || obscureText == false ? false : true,
        validator: valid,
        controller: controller,
        keyboardType: textInputType,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0,),
          label: Text(textLabel),
          // labelStyle: TextStyle(fontSize: 20.0),
          prefixIcon: Icon(prefix),
          suffixIcon: InkWell(onTap: onTapIcon,child: Icon(suffix),),
          hintText: textHint,
          hintStyle: const TextStyle(fontSize: 14.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),

      ),
    );
  }
}
