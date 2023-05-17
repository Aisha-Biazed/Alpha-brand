import 'package:alpha_brand/Presentation/resources/color_manager.dart';
import 'package:alpha_brand/Presentation/splash/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';
class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    backgroundColor: ColorManager.grey,
      body: const SplashViewBody(),
    );
  }
}
