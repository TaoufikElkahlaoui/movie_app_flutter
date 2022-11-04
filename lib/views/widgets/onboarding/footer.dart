import 'package:flutter/material.dart';
import 'package:movie_app/views/widgets/onboarding/skipbutton.dart';
import 'package:movie_app/views/widgets/onboarding/slider_dotes.dart';

class FooterOnBoarding extends StatelessWidget {
  const FooterOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 23,
      right: 23,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          SliderDotsOnBoarding(),
          SkipButtonOnBoarding(),
        ],
      ),
    );
  }
}
