// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/color.dart';
import 'package:movie_app/core/constants/style.dart';

class ButtonAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const ButtonAuth({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 15),
        color: AppColor.mainColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: onPressed,
        child: Text(
          text,
          style: AppStyle.subHeadline1
              .copyWith(color: AppColor.textWhite, fontSize: 15),
        ));
  }
}
