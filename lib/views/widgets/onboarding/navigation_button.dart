import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:movie_app/controllers/onboarding_controller.dart';
import 'package:movie_app/core/constants/style.dart';
import 'package:movie_app/data/datasource/static/static.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        width: MediaQuery.of(context).size.width,
        top: MediaQuery.of(context).size.height - 130,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<OnBoardingControllerImpl>(builder: (controller) {
              return OutlinedButton(
                onPressed: () {
                  controller.next();
                },
                style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                    maximumSize: const Size(180, 100),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    side: const BorderSide(
                      width: .8,
                      color: Colors.white70,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    controller.currentSlider == onboardingList.length - 1
                        ? Text(
                            'finish'.tr,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: AppStyle.fontFamily,
                              letterSpacing: .7,
                            ),
                          )
                        : Text(
                            'next'.tr,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: AppStyle.fontFamily,
                              letterSpacing: .7,
                            ),
                          ),
                    const Icon(
                      Icons.arrow_right_alt_outlined,
                      color: Colors.white,
                      size: 20,
                    )
                  ],
                ),
              );
            }),
          ],
        ));
  }
}
