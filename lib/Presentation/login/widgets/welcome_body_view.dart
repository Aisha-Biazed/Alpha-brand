import 'package:alpha_brand/Presentation/resources/color_manager.dart';
import 'package:alpha_brand/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../resources/assets_manager.dart';
import '../../resources/strings_manager.dart';
import '../../../core/constants.dart';
import '../../../core/widgets/custom_buttons.dart';
import '../../signIn/sign_in_view.dart';
class WelcomeBodyView extends StatefulWidget {
  const WelcomeBodyView({Key? key}) : super(key: key);

  @override
  State<WelcomeBodyView> createState() => _WelcomeBodyViewState();
}

class _WelcomeBodyViewState extends State<WelcomeBodyView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 84),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 450,
                child: Image.asset(ImageAssets.video3)),
             Padding(
                padding: const EdgeInsets.fromLTRB(34, 10, 33, 20).w,
                child: CustomGeneralButton(
                  onTap: (){
                    Get.to(()=>const SignInView(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 500));
                  },
                  text:AppStrings.welcomeBtnText1,
                  textColor: Colors.white,
                  btnColor: ColorManager.primary,
                ),
            ),
             Padding(
              padding: const EdgeInsets.fromLTRB(34, 10, 33, 20).w,
              child:  const CustomGeneralButton(text: AppStrings.welcomeBtnText2,
                btnColor: secondColor,
                textColor: Colors.black,
              ),
            ),
             TextCustom(
                text: AppStrings.welcomeText3,
              textColor: ColorManager.lightGrey,
            )
          ],
        )
      ),
    );
  }
}