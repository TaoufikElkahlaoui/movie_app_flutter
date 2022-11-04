import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/color.dart';

class ButtonLang extends StatelessWidget {
  final String title;
  final String subtitle;
  final void Function()? onTap;

  const ButtonLang({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 30),
        child: ListTile(
          onTap: onTap,
          title: Text(
            title,
            style: const TextStyle(
                color: AppColor.textWhite,
                fontFamily: "Poppins",
                fontSize: 24,
                fontWeight: FontWeight.w600),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Text(
              subtitle,
              style: TextStyle(color: AppColor.textWhite.withOpacity(0.9)),
            ),
          ),
        ));
  }
}
