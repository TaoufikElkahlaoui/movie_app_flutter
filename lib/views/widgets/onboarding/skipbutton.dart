import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/controllers/onboarding_controller.dart';
import 'package:movie_app/core/constants/color.dart';
import 'package:movie_app/core/constants/style.dart';
import 'package:movie_app/data/datasource/static/static.dart';

class SkipButtonOnBoarding extends StatelessWidget {
  const SkipButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImpl>(builder: (controller) {
      return InkWell(
        onTap: () {
          controller.skip();
        },
        child: controller.currentSlider == onboardingList.length - 1
            ? Text(
                'go_home'.tr,
                style: const TextStyle(
                    color: AppColor.textWhite,
                    fontFamily: AppStyle.fontFamily,
                    letterSpacing: .7,
                    fontSize: 14),
              )
            : Text(
                'skip'.tr,
                style: const TextStyle(
                    color: AppColor.textWhite,
                    fontFamily: AppStyle.fontFamily,
                    letterSpacing: .7,
                    fontSize: 14),
              ),
      );
    });
  }
}
