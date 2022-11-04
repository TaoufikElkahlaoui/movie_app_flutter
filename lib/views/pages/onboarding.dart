import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/controllers/onboarding_controller.dart';
import 'package:movie_app/views/widgets/onboarding/footer.dart';
import 'package:movie_app/views/widgets/onboarding/navigation_button.dart';
import 'package:movie_app/views/widgets/onboarding/slider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImpl());
    return Scaffold(
      body: Stack(
        children: const [
          SliderOnBoarding(),
          NavigationButton(),
          FooterOnBoarding(),
        ],
      ),
    );
  }
}
