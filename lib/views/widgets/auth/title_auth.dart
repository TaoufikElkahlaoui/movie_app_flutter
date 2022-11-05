// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/style.dart';

class TitleAuth extends StatelessWidget {
  final String title;

  const TitleAuth({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: AppStyle.headline2,
    );
  }
}
