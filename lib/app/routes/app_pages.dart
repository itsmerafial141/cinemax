import 'package:get/get.dart';

import 'package:cinemax/app/modules/home/bindings/home_binding.dart';
import 'package:cinemax/app/modules/home/views/home_view.dart';
import 'package:cinemax/app/modules/onboarding/bindings/onboarding_binding.dart';
import 'package:cinemax/app/modules/onboarding/views/onboarding_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL_HM = Routes.HOME;
  static const INITIAL_OB = Routes.ONBOARDING;

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
  ];
}
