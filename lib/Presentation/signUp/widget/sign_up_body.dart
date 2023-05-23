import 'package:alpha_brand/Presentation/resources/color_manager.dart';
import 'package:alpha_brand/core/widgets/custom_buttons.dart';
import 'package:alpha_brand/core/widgets/custom_text.dart';
import 'package:alpha_brand/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../resources/assets_manager.dart';
import '../../resources/routes_manager.dart';
import '../../resources/strings_manager.dart';

class SignUpBodyView extends StatelessWidget {
  const SignUpBodyView({Key? key, this.inputType, this.onSaved}) : super(key: key);
  final TextInputType? inputType;
  final ValueSetter? onSaved;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(ImageAssets.kLogo,),
        Padding(
          padding: REdgeInsetsDirectional.only(start: 33, end: 33 ,top: 40),
          child: Column(
            children: [
              const Spacer(
                flex: 3,
              ),
              Image.asset(ImageAssets.signUplogo,height:55.87.h ,width: 168.63.w),
              const Spacer(),
              const CustomTextFormField(hintText: AppStrings.signUptHintText1),
              18.verticalSpace,
              const CustomTextFormField(hintText: AppStrings.signUpHintText2),
              18.verticalSpace,
              IntlPhoneField(
                flagsButtonPadding: REdgeInsetsDirectional.only(start: 16),
                showCountryFlag: false,
                dropdownIconPosition: IconPosition.trailing,
                showDropdownIcon:true,
                dropdownIcon: Icon(Icons.keyboard_arrow_down, color:ColorManager.primary ,),
                dropdownDecoration:BoxDecoration(),
                initialCountryCode:AppStrings.signUpCode,
                decoration: InputDecoration(
                  counterText: "",
                    hintStyle: TextStyle(
                        color: ColorManager.lightGrey
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.w),
                        borderSide: BorderSide(
                            color: ColorManager.secodnary
                        )

                    ),
                    focusedBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.w),
                        borderSide: BorderSide(
                            color: ColorManager.secodnary
                        )

                    ) ,
                    hintText: AppStrings.signUpHintText3,
                    filled: true,
                    fillColor: ColorManager.secodnary,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.w),
                        borderSide: BorderSide(
                            color: ColorManager.secodnary
                        )

                    )
                ),),
              // const CustomTextFormField(hintText: AppStrings.signUpHintText3),
              18.verticalSpace,
               CustomTextFormField(hintText: AppStrings.signUpHintText4, suffexIcon: Icon(Icons.remove_red_eye_outlined, color: ColorManager.lightGrey,),),
              18.verticalSpace,
              const CustomTextFormField(hintText: AppStrings.signUpHintText5 ),
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
                            context, Routes.addressRote);
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
                    text:AppStrings.signUpText,
                    textColor: ColorManager.lightGrey,
                  ),
                  // RSizedBox(width: 10.w,),
                  10.horizontalSpace,
                  TextCustom(
                    text:AppStrings.loginText,
                    textColor: ColorManager.primary,
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
