import 'package:get/get.dart';
import 'package:movie_app/core/constants/routes.dart';
import 'package:movie_app/views/pages/auth/forgotpassword/forgot_password.dart';
import 'package:movie_app/views/pages/auth/login/login.dart';
import 'package:movie_app/views/pages/auth/forgotpassword/reset_passowrd.dart';
import 'package:movie_app/views/pages/auth/signup/signup.dart';
import 'package:movie_app/views/pages/auth/signup/signup_complete.dart';
import 'package:movie_app/views/pages/auth/forgotpassword/success_resetpassword.dart';
import 'package:movie_app/views/pages/auth/forgotpassword/verify_email.dart';
import 'package:movie_app/views/pages/auth/signup/success_signup.dart';
import 'package:movie_app/views/pages/auth/signup/verifyemail_signup.dart';
import 'package:movie_app/views/pages/onboarding.dart';

List<GetPage<dynamic>> pages = [
  GetPage(
      name: AppRoutes.onboarding,
      page: () => const OnBoarding(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500)),
  GetPage(
    name: AppRoutes.login,
    page: () => const Login(),
  ),
  GetPage(
    name: AppRoutes.signup,
    page: () => const SignUp(),
  ),
  GetPage(
      name: AppRoutes.signupcomplete,
      page: () => const SignUpComplete(),
      transition: Transition.leftToRightWithFade),
  GetPage(
    name: AppRoutes.forgotpassword,
    page: () => const ForgotPassword(),
  ),
  GetPage(
    name: AppRoutes.verifyemail,
    page: () => const VerifyEmail(),
  ),
  GetPage(
    name: AppRoutes.resetpassword,
    page: () => const ResetPassword(),
  ),
  GetPage(
    name: AppRoutes.successResetPassword,
    page: () => const SuccessResetPassword(),
  ),
  GetPage(
    name: AppRoutes.successSignUp,
    page: () => const SuccessSignUp(),
  ),
  GetPage(
    name: AppRoutes.verifyemailsignup,
    page: () => const VerifyEmailSignUp(),
  ),
];
