import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/custom_text.dart';
import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';
import '../../resources/strings_manager.dart';
class CardItem extends StatelessWidget {
  const CardItem({Key? key, required this.img}) : super(key: key);
final String img;
  @override
  Widget build(BuildContext context) {
    return   Card(
      margin: const EdgeInsetsDirectional.only(bottom: 20),
      color: ColorManager.white,
      child:  Row(
        children: [
          RSizedBox(
            height: 140,
            child: Row(
              children: [
                AspectRatio(
                  aspectRatio: 2.7 / 4,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        // color: Colors.red,
                        image:  DecorationImage(
                            image: AssetImage(img))),
                  ),
                ),
              ],
            ),
          ),
          20.horizontalSpace,
          Column(
            children:  [
              Text('Creamy basic Hoodie'),
              Text('Black - Large'),
              10.verticalSpace,
              RSizedBox(
                width: 150,
                height: 41,
                child: Container(
                  decoration: BoxDecoration(
                      color: ColorManager.secodnary,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  padding: REdgeInsetsDirectional.only(start: 20, end: 10),
                  child: Row(
                    children: [
                      TextCustom(
                        text: AppStrings.onBoardingBtn1,
                        textColor: ColorManager.primary,
                      ),
                      10.horizontalSpace,
                      TextCustom(
                          text: AppStrings.onBoardingBtn1_2,
                          textColor: ColorManager.dark),
                    ],
                  ),
                ),
              ),
            ],
          ),
          80.horizontalSpace,
          Container(
            margin: REdgeInsetsDirectional.only(bottom: 70, top: 0),
            height: 35.h,
            width: 35.w,
            decoration: BoxDecoration(
              color: ColorManager.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8)
            ),
              child: Icon(Icons.restore_from_trash_outlined ,color: ColorManager.primary,)),
        ],
      ),
    );
  }
}
