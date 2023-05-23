import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/widgets/custom_buttons.dart';
import '../../../core/widgets/custom_text_field.dart';
import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';
import '../../resources/routes_manager.dart';
import '../../resources/strings_manager.dart';

class AddressBodyViwe extends StatelessWidget {
  const AddressBodyViwe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          ImageAssets.kLogo,
        ),
        Padding(
          padding: REdgeInsetsDirectional.only(
            start: 33,
            end: 33,
          ),
          child: Column(
            children: [
              const Spacer(
                flex: 2,
              ),
              Image.asset(ImageAssets.address,
                  height: 55.87.h, width: 168.63.w),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ExpansionTile(
                    iconColor: ColorManager.primary,
                  title: Text(AppStrings.addressText1),
                  children: [
                    ListTile(
                      title: Text("Syria"),
                    ),
                    Divider(
                      color: ColorManager.secodnary,
                      thickness: 1
                    ),
                    ListTile(
                      title: Text("Turky"),
                    ),
                    Divider(
                        color: ColorManager.secodnary,
                        thickness: 1
                    ),
                    ListTile(
                      title: Text("Syria"),
                    )
                  ],
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ),
              18.verticalSpace,
              CustomTextFormField(
                hintText: AppStrings.addressText2,
                color: ColorManager.lightGrey,
              ),
              18.verticalSpace,
              CustomTextFormField(
                hintText: AppStrings.addressText3,
                color: ColorManager.lightGrey,
              ),
              const Spacer(),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: CustomButtonWithIcon(
                      iconData: Icons.arrow_back_ios,
                      color: ColorManager.primary,
                      onTap: () {
                        Navigator.pushNamed(context, Routes.signUpRoute);
                      },
                    ),
                  ),
                  10.horizontalSpace,
                  // const RSizedBox(width:10 ,),//todo
                  Flexible(
                    flex: 3,
                    child: CustomGeneralButton(
                      text: AppStrings.signInBtnText1,
                      textColor: ColorManager.white,
                      btnColor: ColorManager.primary,
                      onTap: () {
                        Navigator.pushNamed(context, Routes.onBoardingRote);
                      },
                    ),
                  ),
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
