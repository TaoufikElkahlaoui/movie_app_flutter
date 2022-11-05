import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:movie_app/controllers/onboarding_controller.dart';
import 'package:movie_app/core/constants/style.dart';
import 'package:movie_app/data/datasource/static/static.dart';

class SliderOnBoarding extends GetView<OnBoardingControllerImpl> {
  const SliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (index) {
          controller.onPageChanged(index);
        },
        itemCount: onboardingList.length,
        itemBuilder: (context, i) => Stack(
              children: [
                Image.asset(
                  onboardingList[i].coverUrl!,
                  height: MediaQuery.of(context).size.height - 150,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                ),
                Positioned.fill(
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  onboardingList[i]
                                      .backgroundColor!
                                      .withOpacity(.2),
                                  onboardingList[i].backgroundColor!
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: const [
                                  0.4,
                                  0.6,
                                ])))),
                Positioned(
                  width: MediaQuery.of(context).size.width,
                  top: MediaQuery.of(context).size.height - 300,
                  child: Column(
                    children: [
                      Text(
                        onboardingList[i].title!.tr,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                            fontFamily: AppStyle.fontFamily),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        onboardingList[i].text!.tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: onboardingList[i].textColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          fontFamily: AppStyle.fontFamily,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ));
  }
}
