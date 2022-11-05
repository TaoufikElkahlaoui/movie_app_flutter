import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:movie_app/core/constants/style.dart';

class TitleLanguage extends StatelessWidget {
  const TitleLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('choose'.tr,
              textAlign: TextAlign.start, style: AppStyle.headline1),
          Text(
            'your_lang'.tr,
            textAlign: TextAlign.start,
            style: AppStyle.subHeadline1,
          ),
        ],
      ),
    );
  }
}
