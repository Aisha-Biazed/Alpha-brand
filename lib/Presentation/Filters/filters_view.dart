import 'package:alpha_brand/Presentation/Filters/widgets/filters_body-view.dart';
import 'package:alpha_brand/Presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';

import '../onBoarding/presentaion/widgets/custom_bottomNavigation.dart';

class FiltersView extends StatelessWidget {
  const FiltersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FiltersBodyView(),
    );
  }
}
