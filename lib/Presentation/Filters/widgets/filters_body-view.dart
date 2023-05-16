import 'package:alpha_brand/Presentation/onBoarding/presentaion/on_boarding_view.dart';
import 'package:alpha_brand/Presentation/resources/color_manager.dart';
import 'package:alpha_brand/Presentation/resources/strings_manager.dart';
import 'package:alpha_brand/core/widgets/custom_buttons.dart';
import 'package:alpha_brand/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/widgets/custom_dropdown_button.dart';

class FiltersBodyView extends StatelessWidget {
  const FiltersBodyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              'Filters',
              textAlign: TextAlign.right
          ),
          // bottom: ,
          backgroundColor: ColorManager.primary,
          actions: [
            Padding(
              padding:  REdgeInsetsDirectional.only(top: 43, bottom: 13,end: 21),
              child: Container(
                decoration: BoxDecoration(
                  color: ColorManager.dark,
                  borderRadius: BorderRadius.all(Radius.circular(9))
                ),
                  width: 41.w,
                  height: 51.h,
                  child: IconButton(onPressed: () {
                    Get.to(()=>const OnBoardingView(),transition: Transition.rightToLeft,duration: const Duration(milliseconds: 500));
                  },
                    icon: const Icon(Icons.arrow_back_ios,size: 20,),
                    color: ColorManager.white,)),
            )
          ],
          automaticallyImplyLeading: false,
          toolbarHeight: 95.h,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(22),
                  bottomRight: Radius.circular(22)
              )
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(31.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextCustom(text: AppStrings.filtersText,
              textColor: ColorManager.primary,),
              RSizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomDropDown(t1: 'Color', t2: 'priamry', t3: 'dark', hint: 'Color',),
                  CustomDropDown(t1: 'Brand', t2: 'icecup', t3: 'Shadwos', hint: 'Brand',),
                ],
              ),
            RSizedBox(
              height: 30,
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomDropDown(t1: 'Category', t2: '3', t3: '2', hint: 'Category',),
                  CustomDropDown(t1: 'Size', t2: 'large', t3: 'small', hint: 'Size',),
                ],
              ),
              Spacer(),
              CustomGeneralButton(text: AppStrings.filtersBtn,
              textColor: ColorManager.white,
              btnColor: ColorManager.primary,
              )
            ],
          ),
        )
    );
  }
}
