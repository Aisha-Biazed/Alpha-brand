import 'package:alpha_brand/Presentation/resources/color_manager.dart';
import 'package:alpha_brand/Presentation/resources/strings_manager.dart';
import 'package:alpha_brand/core/widgets/custom_buttons.dart';
import 'package:alpha_brand/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/widgets/custom_dropdown_button.dart';
import '../../../core/widgets/custom_appbar.dart';

class FiltersBodyView extends StatelessWidget {
  const FiltersBodyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(AppStrings.filtersAppbar),
        body: Padding(
          padding: const EdgeInsets.all(31.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextCustom(text: AppStrings.filtersText,
              textColor: ColorManager.primary,),
              const RSizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomDropDown(t1: 'Color', t2: 'primary', t3: 'dark', hint: 'Color',),
                  CustomDropDown(t1: 'Brand', t2: 'ice_cup', t3: 'Shadows', hint: 'Brand',),
                ],
              ),
            const RSizedBox(
              height: 30,
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomDropDown(t1: 'Category', t2: '3', t3: '2', hint: 'Category',),
                  CustomDropDown(t1: 'Size', t2: 'large', t3: 'small', hint: 'Size',),
                ],
              ),
              const Spacer(),
              CustomGeneralButton(text: AppStrings.filtersBtn,
              textColor: ColorManager.white,
              btnColor: ColorManager.primary,
              ),
              77.verticalSpace
            ],
          ),
        )
    );
  }
}
