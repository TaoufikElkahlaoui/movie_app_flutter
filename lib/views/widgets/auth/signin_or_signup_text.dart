// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/style.dart';

class SignInOrSignUpTextAuth extends StatelessWidget {
  final String text;
  final String inkText;
  final void Function() onTap;

  const SignInOrSignUpTextAuth({
    Key? key,
    required this.text,
    required this.inkText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: AppStyle.textMedium),
        const SizedBox(
          width: 3,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            inkText,
            style: AppStyle.headline1.copyWith(fontSize: 13),
          ),
        )
      ],
    );
  }
}
