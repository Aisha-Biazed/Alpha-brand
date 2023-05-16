import 'package:alpha_brand/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../Presentation/resources/strings_manager.dart';
import '../../login/welcome_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {


  @override
  initState(){
    super.initState();
    goToNextView();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
       Image.asset('assets/images/splash_view.png',),
     Column(
       children: const[
          TextCustom(text:AppStrings.splashViewText1),
          TextCustom(
           text: AppStrings.splashViewText2,
           textColor: Color(0xff121314),
         ),
       ],
     ),
      ],
    );
  }
  void goToNextView() {
    Future.delayed(const Duration(seconds: 3),(){
      Get.to(()=> WelcomeBody() , transition: Transition.fade);
    });
  }
}
