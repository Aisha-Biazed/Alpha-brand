import 'package:alpha_brand/Presentation/checkout/widgets/card_item.dart';
import 'package:alpha_brand/Presentation/checkout/widgets/list_view_item.dart';
import 'package:alpha_brand/core/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/custom_text.dart';
import '../../resources/assets_manager.dart';
import '../../resources/color_manager.dart';
import '../../resources/strings_manager.dart';
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
    );
  }
}
