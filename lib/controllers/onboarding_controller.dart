import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/constants/routes.dart';
import 'package:movie_app/data/datasource/static/static.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
  skip();
}

class OnBoardingControllerImpl extends OnBoardingController {
  int currentSlider = 0;

  late PageController pageController;

  @override
  next() {
    if (currentSlider == onboardingList.length - 1) {
      Get.offAllNamed(AppRoutes.login);
    } else {
      currentSlider++;
      pageController.animateToPage(currentSlider,
          duration: const Duration(milliseconds: 600), curve: Curves.easeInOut);
      update();
    }
  }

  @override
  onPageChanged(int index) {
    currentSlider = index;
    update();
  }

  @override
  skip() {
    Get.offNamed(AppRoutes.login);
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
