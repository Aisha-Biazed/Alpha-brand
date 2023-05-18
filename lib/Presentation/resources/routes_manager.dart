import 'package:alpha_brand/Presentation/Filters/filters_view.dart';
import 'package:alpha_brand/Presentation/login/welcome_view.dart';
import 'package:alpha_brand/Presentation/onBoarding/presentaion/on_boarding_view.dart';
import 'package:alpha_brand/Presentation/resources/strings_manager.dart';
import 'package:alpha_brand/Presentation/signIn/sign_in_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Cart/cart_view.dart';
import '../splash/splash_view.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String onBoardingRote = "/onBoarding";
  static const String signInRote = "/SignInView";
  static const String filtersRoute = "/filters";
  static const String cartRoute = "/cart";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const WelcomeBody());
      case Routes.signInRote:
        return MaterialPageRoute(builder: (_) => const SignInView());
      case Routes.onBoardingRote:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.filtersRoute:
        return MaterialPageRoute(builder: (_) => const FiltersView());
      case Routes.cartRoute:
        return MaterialPageRoute(builder: (_) => const CartView());
      // case Routes.storeDetailsRoute:
      //   initStoreDetailsModule();
      //   return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.notFound),
              ),
              body: const Center(child: Text(AppStrings.notFound)),
            ));
  }
}
