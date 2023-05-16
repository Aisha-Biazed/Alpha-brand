import 'package:alpha_brand/Presentation/onBoarding/presentaion/widgets/on_boarding_body.dart';
import 'package:alpha_brand/Presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';



class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      extendBody: true,
      body: const OnBoardingViewBody(),
    );
  }
}
