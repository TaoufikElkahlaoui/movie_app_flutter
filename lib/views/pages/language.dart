import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/image_asset.dart';
import 'package:movie_app/views/widgets/language/grid.dart';
import 'package:movie_app/views/widgets/language/title.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage(AppImageAsset.onboardingFive),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.hardLight),
          ),
        ),
        child: ListView(
          padding:
              const EdgeInsets.only(top: 130, bottom: 50, right: 50, left: 50),
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: const [
            TitleLanguage(),
            SizedBox(
              height: 40,
            ),
            GridLanguage(),
          ],
        ),
      ),
    );
  }
}
