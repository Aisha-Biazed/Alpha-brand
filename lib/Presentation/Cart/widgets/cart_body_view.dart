
import 'package:alpha_brand/core/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/custom_text.dart';
import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';
import '../../resources/strings_manager.dart';
import 'card_item.dart';
class CartBodyView extends StatelessWidget {
  const CartBodyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Checkout'),
      body: Padding(
        padding: REdgeInsetsDirectional.only(start: 21 , top: 26),
        child: ListView(
          padding:  const EdgeInsets.all(8),
          children: const <Widget>[
            CardItem(),
            CardItem(),
            CardItem(),
          ],
        )
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,color: ColorManager.primary),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category,color: ColorManager.primary),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border,color: ColorManager.primary),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat,color: ColorManager.primary),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined ,color: ColorManager.primary,),
            label: 'Chats',

          ),
        ],
      ),
    );
  }
}
