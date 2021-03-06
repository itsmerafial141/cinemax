import 'package:get/get.dart';

import 'package:cinemax/app/modules/edit_profile/bindings/edit_profile_binding.dart';
import 'package:cinemax/app/modules/edit_profile/views/edit_profile_view.dart';
import 'package:cinemax/app/modules/genre/bindings/genre_binding.dart';
import 'package:cinemax/app/modules/genre/views/genre_view.dart';
import 'package:cinemax/app/modules/most_popular_movie/bindings/most_popular_movie_binding.dart';
import 'package:cinemax/app/modules/most_popular_movie/views/most_popular_movie_view.dart';
import 'package:cinemax/app/modules/payment_method/bindings/payment_method_binding.dart';
import 'package:cinemax/app/modules/payment_method/views/payment_method_view.dart';
import 'package:cinemax/app/modules/premium_account/bindings/premium_account_binding.dart';
import 'package:cinemax/app/modules/premium_account/views/premium_account_view.dart';
import 'package:cinemax/app/modules/privacy_policy/bindings/privacy_policy_binding.dart';
import 'package:cinemax/app/modules/privacy_policy/views/privacy_policy_view.dart';
import 'package:cinemax/app/modules/trailer/bindings/trailer_binding.dart';
import 'package:cinemax/app/modules/trailer/views/trailer_view.dart';
import 'package:cinemax/app/modules/upcoming_movie/bindings/upcoming_movie_binding.dart';
import 'package:cinemax/app/modules/upcoming_movie/views/upcoming_movie_view.dart';

import '../modules/download/bindings/download_binding.dart';
import '../modules/download/views/download_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/homepage/bindings/homepage_binding.dart';
import '../modules/homepage/views/homepage_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/login_sign/bindings/login_sign_binding.dart';
import '../modules/login_sign/views/login_sign_view.dart';
import '../modules/movie_detail/bindings/movie_detail_binding.dart';
import '../modules/movie_detail/views/movie_detail_view.dart';
import '../modules/navigation/bindings/navigation_binding.dart';
import '../modules/navigation/views/navigation_view.dart';
import '../modules/new_password/bindings/new_password_binding.dart';
import '../modules/new_password/views/new_password_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/reset_password/bindings/reset_password_binding.dart';
import '../modules/reset_password/views/reset_password_view.dart';
import '../modules/search/bindings/search_binding.dart';
import '../modules/search/views/search_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';
import '../modules/verification/bindings/verification_binding.dart';
import '../modules/verification/views/verification_view.dart';
import '../modules/wishlist/bindings/wishlist_binding.dart';
import '../modules/wishlist/views/wishlist_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL_HM = Routes.HOME;
  static const INITIAL_HP = Routes.HOMEPAGE;
  static const INITIAL_OB = Routes.ONBOARDING;
  static const INITIAL_SS = Routes.SPLASH_SCREEN;
  static const INITIAL_LS = Routes.LOGIN_SIGN;
  static const INITIAL_LG = Routes.LOGIN;
  static const INITIAL_SU = Routes.SIGNUP;
  static const INITIAL_RP = Routes.RESET_PASSWORD;
  static const INITIAL_VR = Routes.VERIFICATION;
  static const INITIAL_NP = Routes.NEW_PASSWORD;
  static const INITIAL_NV = Routes.NAVIGATION;
  static const INITIAL_SR = Routes.SEARCH;
  static const INITIAL_DW = Routes.DOWNLOAD;
  static const INITIAL_PR = Routes.PROFILE;
  static const INITIAL_MD = Routes.MOVIE_DETAIL;
  static const INITIAL_WL = Routes.WISHLIST;
  static const INITIAL_GR = Routes.GENRE;
  static const INITIAL_MP = Routes.MOST_POPULAR_MOVIE;
  static const INITIAL_PA = Routes.PREMIUM_ACCOUNT;
  static const INITIAL_PM = Routes.PAYMENT_METHOD;
  static const INITIAL_UM = Routes.UPCOMING_MOVIE;
  static const INITIAL_TR = Routes.TRAILER;
  static const INITIAL_EP = Routes.EDIT_PROFILE;
  static const INITIAL_PP = Routes.PRIVACY_POLICY;

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
    GetPage(
      name: _Paths.LOGIN_SIGN,
      page: () => LoginSignView(),
      binding: LoginSignBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.RESET_PASSWORD,
      page: () => ResetPasswordView(),
      binding: ResetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.VERIFICATION,
      page: () => VerificationView(),
      binding: VerificationBinding(),
    ),
    GetPage(
      name: _Paths.NEW_PASSWORD,
      page: () => NewPasswordView(),
      binding: NewPasswordBinding(),
    ),
    GetPage(
      name: _Paths.NAVIGATION,
      page: () => NavigationView(),
      binding: NavigationBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.DOWNLOAD,
      page: () => DownloadView(),
      binding: DownloadBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.MOVIE_DETAIL,
      page: () => MovieDetailView(),
      binding: MovieDetailBinding(),
    ),
    GetPage(
      name: _Paths.WISHLIST,
      page: () => WishlistView(),
      binding: WishlistBinding(),
    ),
    GetPage(
      name: _Paths.GENRE,
      page: () => GenreView(),
      binding: GenreBinding(),
    ),
    GetPage(
      name: _Paths.MOST_POPULAR_MOVIE,
      page: () => MostPopularMovieView(),
      binding: MostPopularMovieBinding(),
    ),
    GetPage(
      name: _Paths.PREMIUM_ACCOUNT,
      page: () => PremiumAccountView(),
      binding: PremiumAccountBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT_METHOD,
      page: () => PaymentMethodView(),
      binding: PaymentMethodBinding(),
    ),
    GetPage(
      name: _Paths.UPCOMING_MOVIE,
      page: () => UpcomingMovieView(),
      binding: UpcomingMovieBinding(),
    ),
    GetPage(
      name: _Paths.TRAILER,
      page: () => TrailerView(),
      binding: TrailerBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PROFILE,
      page: () => EditProfileView(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: _Paths.PRIVACY_POLICY,
      page: () => PrivacyPolicyView(),
      binding: PrivacyPolicyBinding(),
    ),
  ];
}
