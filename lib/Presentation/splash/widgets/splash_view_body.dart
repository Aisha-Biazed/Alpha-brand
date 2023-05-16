import 'package:alpha_brand/Presentation/resources/assets_manager.dart';
import 'package:alpha_brand/Presentation/resources/color_manager.dart';
import 'package:alpha_brand/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return Padding(
      padding:  REdgeInsets.only(top: 54.3,),
      child: Column(
        children:[
         Image.asset(ImageAssets.splashLogo,height: 700,),
         const TextCustom(text:AppStrings.splashViewText1),
        TextCustom(
        text: AppStrings.splashViewText2,
        textColor: ColorManager.dark,
           ),
          Spacer()
        ],
      ),
    );
  }
  void goToNextView() {
    Future.delayed(const Duration(seconds: 3),(){
      Get.to(()=> const WelcomeBody() , transition: Transition.fade);
    });
  }
}
