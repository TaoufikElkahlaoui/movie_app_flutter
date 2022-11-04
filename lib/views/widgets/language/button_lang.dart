import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/color.dart';
import 'package:movie_app/core/constants/style.dart';

class ButtonLang extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final void Function()? onTap;

  const ButtonLang({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onTap,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Text(
          subtitle,
          style: TextStyle(color: AppColor.textWhite.withOpacity(0.9)),
        ),
      ),
      title:
          Text(title, style: AppStyle.btnLangText, textAlign: TextAlign.start),
      trailing: CircleAvatar(
        foregroundImage: AssetImage(image),
        // child: Image.asset(image)
      ),
    );
  }
}
