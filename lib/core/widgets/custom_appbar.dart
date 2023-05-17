import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Presentation/onBoarding/presentaion/widgets/on_boarding_body.dart';
import '../../Presentation/resources/color_manager.dart';

AppBar CustomAppBar(String title )=> AppBar(
  title:  Text(
      title,
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
              borderRadius: BorderRadius.all(Radius.circular(9.w))
          ),
          width: 41.w,
          height: 51.h,
          child: IconButton(onPressed: () {
            Get.to(()=>const OnBoardingViewBody(),transition: Transition.rightToLeft,duration: const Duration(milliseconds: 500));
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
);