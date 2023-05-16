import 'package:alpha_brand/Presentation/login/widgets/welcome_body_view.dart';
import 'package:alpha_brand/Presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';
class WelcomeBody extends StatelessWidget {
  const WelcomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorManager.white,
      body: WelcomeBodyView(),
    );
  }
}
