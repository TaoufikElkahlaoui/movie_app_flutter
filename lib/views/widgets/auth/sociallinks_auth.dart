import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/color.dart';

class SocialLinksAuth extends StatelessWidget {
  const SocialLinksAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: AppColor.textGreyPrimary.withOpacity(.3),
          child: const Icon(Icons.g_mobiledata_sharp, size: 30),
        ),
        const SizedBox(
          width: 10,
        ),
        CircleAvatar(
          backgroundColor: AppColor.textGreyPrimary.withOpacity(.3),
          child: const Icon(Icons.facebook_sharp),
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
