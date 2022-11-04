import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:movie_app/core/constants/color.dart';

class TitleLanguage extends StatelessWidget {
  const TitleLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'choose'.tr,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontSize: 40,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w800,
              color: AppColor.textWhite,
            ),
          ),
          Text(
            'your_lang'.tr,
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 18,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w300,
                color: AppColor.textWhite.withOpacity(.8)),
          ),
        ],
      ),
    );
  }
}
