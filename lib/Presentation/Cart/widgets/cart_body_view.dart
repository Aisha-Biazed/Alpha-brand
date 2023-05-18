import 'package:alpha_brand/Presentation/resources/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/custom_text.dart';
import '../../resources/color_manager.dart';
import '../../resources/strings_manager.dart';
import 'card_item.dart';
import '../../../core/widgets/custom_appbar_cart.dart';

class CartBodyView extends StatelessWidget {
  const CartBodyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        'Cart',
        [
          Padding(
            padding: REdgeInsetsDirectional.only(top: 43, bottom: 13, end: 21),
            child: Container(
                decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.all(Radius.circular(9.w))),
                width: 131.w,
                height: 31.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextCustom(
                      text: AppStrings.Purchases,
                      textColor: ColorManager.dark,
                    ),
                    Icon(
                      Icons.refresh_outlined,
                      color: ColorManager.primary,
                    )
                  ],
                )),
          )
        ],
      ),
      body: Padding(
          padding: REdgeInsetsDirectional.only(start: 21, top: 26),
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: const <Widget>[
              CardItem(
                img: ImageAssets.catImg_1,
              ),
              CardItem(
                img: ImageAssets.catImg_2,
              ),
              CardItem(
                img: ImageAssets.catImg_3,
              ),
            ],
          )),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  // borderRadius: const BorderRadius.only(
                  //     topLeft: Radius.circular(10), topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                  color: ColorManager.primary,
                  boxShadow: [
                    BoxShadow(
                      color: ColorManager.secodnary,
                      blurRadius: 5.0,
                    ),
                  ],
                ),
                height: 80.h,
                child: Padding(
                  padding: REdgeInsetsDirectional.only(start: 21, end: 11),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextCustom(
                        text: AppStrings.totalPrice,
                        textColor: ColorManager.white,
                      ),
                      20.horizontalSpace,
                      TextCustom(
                          text: AppStrings.numberCartbtn,
                          textColor: ColorManager.white),
                      50.horizontalSpace,
                      Container(
                        decoration: BoxDecoration(
                            color: ColorManager.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(9.w))),
                        width: 131.w,
                        height: 46.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextCustom(
                              text: AppStrings.checkout,
                              textColor: ColorManager.dark,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: ColorManager.primary,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              BottomNavigationBar(
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined,
                        color: ColorManager.darkLight),
                    label: 'home',
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.qr_code_sharp,
                          color: ColorManager.darkLight),
                      label: 'category'),
                  BottomNavigationBarItem(
                      icon:
                          Icon(Icons.star_border, color: ColorManager.primary),
                      label: 'star'),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.enhance_photo_translate_sharp,
                        color: ColorManager.darkLight),
                    label: 'sharp',
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person_2_outlined,
                        color: ColorManager.darkLight,
                      ),
                      label: 'person'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
