import 'package:alpha_brand/Presentation/onBoarding/presentaion/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

import '../../../resources/assets_manager.dart';
import '../../../resources/strings_manager.dart';
class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key, required this.pageController}) : super(key: key);
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children:   [
        Image.asset( ImageAssets.onBoarding1,fit: BoxFit.cover,),
        Image.asset( ImageAssets.onBoarding2,fit: BoxFit.cover),
        Image.asset( ImageAssets.onBoarding1,fit: BoxFit.cover),
        
      ],
    );
  }
}
