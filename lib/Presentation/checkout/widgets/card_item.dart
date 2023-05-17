import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';
class CardItem extends StatelessWidget {
  const CardItem({Key? key}) : super(key: key);

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
                            image: AssetImage(ImageAssets.catImg_2))),
                  ),
                ),
              ],
            ),
          ),
          20.horizontalSpace,
          Column(
            children: const [
              Text('Creamy basic Hoodie'),
              Text('Black - Large'),
            ],
          ),
          80.horizontalSpace,
          Icon(Icons.restore_from_trash_outlined ,color: ColorManager.primary,)
        ],
      ),
    );
  }
}
