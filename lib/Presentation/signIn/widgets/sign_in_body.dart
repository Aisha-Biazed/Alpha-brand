import 'package:alpha_brand/Presentation/resources/color_manager.dart';
import 'package:alpha_brand/core/widgets/custom_buttons.dart';
import 'package:alpha_brand/core/widgets/custom_text.dart';
import 'package:alpha_brand/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../login/welcome_view.dart';
import '../../onBoarding/presentaion/widgets/on_boarding_body.dart';
import '../../resources/assets_manager.dart';
import '../../resources/routes_manager.dart';
import '../../resources/strings_manager.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key, this.inputType, this.onSaved}) : super(key: key);
  final TextInputType? inputType;
  final ValueSetter? onSaved;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(ImageAssets.kLogo,),
        Padding(
          padding: REdgeInsetsDirectional.only(start: 33, end: 33),
          child: Column(
            children: [
              const Spacer(),
              Image.asset(ImageAssets.signInlogo,height:55.87.h ,width: 168.63.w),
              const Spacer(),
              const CustomTextFormField(hintText: AppStrings.signInInputHintText1),
              18.verticalSpace,
               CustomTextFormField(hintText: AppStrings.signInInputHintText2,suffexIcon: Icon(Icons.remove_red_eye_outlined, color: ColorManager.lightGrey)
              ),
              const Spacer(),
              Row(
                children:   [
                  Flexible(
                    flex: 1,
                    child: CustomButtonWithIcon(
                      iconData: Icons.arrow_back_ios,
                      color: ColorManager.primary,
                      onTap: (){
                      Navigator.pushNamed(context, Routes.loginRoute);
                      },
                    ),
                  ),
                  10.horizontalSpace,
                  // const RSizedBox(width:10 ,),//todo
                   Flexible(
                    flex: 3,
                    child: CustomGeneralButton(text:AppStrings.signInBtnText1,
                      textColor: ColorManager.white,
                      btnColor: ColorManager.primary,
                      onTap: (){
                        Navigator.pushNamed(
                            context, Routes.onBoardingRote);
                      },
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 16.h,),
              16.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextCustom(
                      text:AppStrings.signInText1,
                    textColor: ColorManager.lightGrey,
                  ),
                  // RSizedBox(width: 10.w,),
                  10.horizontalSpace,
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, Routes.signUpRoute);
                    },
                    child: TextCustom(
                      text:AppStrings.signInText2,
                      textColor: ColorManager.primary,
                    ),
                  )
                ],
              ),
              const Spacer()
            ],
          ),
        ),
      ],
    );
  }
}
