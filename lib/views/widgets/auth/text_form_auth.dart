// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/color.dart';

import 'package:movie_app/core/constants/style.dart';

class TextFormAuth extends StatelessWidget {
  final String hintText;
  final String labelText;
  final IconData icon;
  // final TextEditingController controller;

  const TextFormAuth({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.icon,
    // required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // controller: controller,
      decoration: InputDecoration(
          suffixIcon: Icon(
            icon,
            color: AppColor.textGreyPrimary,
            size: 19,
          ),
          label: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                labelText,
              )),
          hintText: hintText,
          hintStyle: AppStyle.appBarTitle.copyWith(fontSize: 13),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.symmetric(horizontal: 30),
          border: OutlineInputBorder(
              borderSide: const BorderSide(),
              borderRadius: BorderRadius.circular(40))),
    );
  }
}
