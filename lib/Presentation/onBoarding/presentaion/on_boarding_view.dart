import 'package:alpha_brand/Presentation/onBoarding/presentaion/widgets/on_boarding_body.dart';
import 'package:flutter/material.dart';



class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBody: true,
      body: OnBoardingViewBody(),
    );
  }
}
