import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/image_asset.dart';
import 'package:movie_app/views/widgets/language/grid.dart';
import 'package:movie_app/views/widgets/language/title.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(AppImageAsset.languageBanner, fit: BoxFit.cover),
          ),
          const TitleLanguage(),
          const GridLanguage(),
        ],
      ),
    );
  }
}
