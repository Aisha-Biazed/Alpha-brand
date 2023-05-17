import 'package:alpha_brand/Presentation/Filters/filters_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../core/widgets/custom_buttons.dart';
import '../../../resources/color_manager.dart';
import '../../../resources/strings_manager.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      child: Container(
        padding: const EdgeInsetsDirectional.only(start: 21, end: 21),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(21), topRight: Radius.circular(21)),
          color: ColorManager.white,
          boxShadow: [
            BoxShadow(
              color: ColorManager.secodnary,
              blurRadius: 5.0,
            ),
          ],
        ),
        height: 107.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
                child: CustomGeneralButton(
              text: AppStrings.filtersBtn1,
              btnColor: ColorManager.secodnary,
              textColor: ColorManager.dark,
            )),
            20.horizontalSpace,
            Flexible(
                child: CustomGeneralButton(
              text: AppStrings.filtersBtn2,
              btnColor: ColorManager.primary,
              textColor: ColorManager.white,
              onTap: () {
                Get.to(() => const FiltersView(),
                    transition: Transition.rightToLeft,
                    duration: const Duration(milliseconds: 500));
              },
            ))
          ],
        ),
      ),
    );
  }
}
