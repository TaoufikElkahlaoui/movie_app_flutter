import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/color.dart';
import 'package:movie_app/core/constants/image_asset.dart';
import 'package:movie_app/data/models/onboarding_model.dart';

List<OnBoardingModel> onboardingList = [
  OnBoardingModel(
    title: "invite_friends",
    text: "invite_friends_text",
    coverUrl: AppImageAsset.onboardingFour,
    backgroundColor: const Color(0xff1b2a53),
    textColor: AppColor.textGreyPrimary,
  ),
  OnBoardingModel(
    title: "find_movie",
    text: "find_movie_text",
    coverUrl: AppImageAsset.onboardingTwo,
    backgroundColor: const Color(0xff2c1b62),
    textColor: AppColor.textGreyPrimary,
  ),
  OnBoardingModel(
    title: "real_time",
    text: "real_time_text",
    coverUrl: AppImageAsset.onboardingThree,
    backgroundColor: const Color(0xffFFD384),
    textColor: AppColor.whiteTextYellowBg,
  ),
  OnBoardingModel(
    title: "offline",
    text: "offline_text",
    coverUrl: AppImageAsset.onboardingOne,
    backgroundColor: const Color(0xff103337),
    textColor: AppColor.textGreyPrimary,
  ),
];
