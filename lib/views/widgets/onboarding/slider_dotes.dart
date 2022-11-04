import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:movie_app/controllers/onboarding_controller.dart';
import 'package:movie_app/core/constants/color.dart';
import 'package:movie_app/data/datasource/static/static.dart';

class SliderDotsOnBoarding extends StatelessWidget {
  const SliderDotsOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImpl>(builder: (controller) {
      return Row(
        children: [
          ...List.generate(
              onboardingList.length,
              (index) => AnimatedContainer(
                    width: controller.currentSlider == index ? 20 : 6,
                    height: 6,
                    margin: const EdgeInsets.only(right: 5),
                    duration: const Duration(milliseconds: 300),
                    decoration: BoxDecoration(
                        color: controller.currentSlider == index
                            ? AppColor.textWhite
                            : AppColor.textGrey,
                        borderRadius: BorderRadius.circular(10.0)),
                  )),
        ],
      );
    });
  }
}
