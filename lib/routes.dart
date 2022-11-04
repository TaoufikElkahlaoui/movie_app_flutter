import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/routes.dart';
import 'package:movie_app/views/pages/auth/login.dart';
import 'package:movie_app/views/pages/onboarding.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login: (context) => const Login(),
  AppRoutes.onboarding: (context) => const OnBoarding()
};
