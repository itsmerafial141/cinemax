import 'package:get/get.dart';

import 'package:cinemax/app/modules/home/bindings/home_binding.dart';
import 'package:cinemax/app/modules/home/views/home_view.dart';
import 'package:cinemax/app/modules/homepage/bindings/homepage_binding.dart';
import 'package:cinemax/app/modules/homepage/views/homepage_view.dart';
import 'package:cinemax/app/modules/onboarding/bindings/onboarding_binding.dart';
import 'package:cinemax/app/modules/onboarding/views/onboarding_view.dart';
import 'package:cinemax/app/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:cinemax/app/modules/splash_screen/views/splash_screen_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL_HM = Routes.HOME;
  static const INITIAL_HP = Routes.HOMEPAGE;
  static const INITIAL_OB = Routes.ONBOARDING;
  static const INITIAL_SS = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.HOMEPAGE,
      page: () => HomepageView(),
      binding: HomepageBinding(),
    ),
  ];
}
