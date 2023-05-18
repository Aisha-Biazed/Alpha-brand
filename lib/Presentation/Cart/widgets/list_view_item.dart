import 'package:alpha_brand/Presentation/resources/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartListView extends StatelessWidget {
  const CartListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RSizedBox(
      height: 140,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  // color: Colors.red,
                  image: const DecorationImage(
                      image: AssetImage(ImageAssets.catImg_1))),
            ),
          ),
          Column(
            children: [],
          )
        ],
      ),
    );
  }
}
