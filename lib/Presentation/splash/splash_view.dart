import 'package:alpha_brand/Presentation/splash/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';
class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    backgroundColor: Color(0xFFF5F5F5),
      body: SplashViewBody(),
    );
  }
}
