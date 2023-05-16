import 'package:alpha_brand/Presentation/details/widgets/details_view_body.dart';
import 'package:alpha_brand/Presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';
class DetailsView extends StatelessWidget {
  const DetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: DetailsViewBody()
    );
  }
}
