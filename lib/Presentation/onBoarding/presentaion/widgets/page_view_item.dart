import 'package:alpha_brand/Presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/space_widget.dart';
class PageViewItem extends StatelessWidget {
  const PageViewItem({Key? key, this.image}) : super(key: key);
  // final String? title;
  // final String? subTitle;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:
        SizedBox(
          height: 450,
            child: Image.asset(image!)),
        // const VerticalSpace(5),
        // Text(
        //     title!,
        //   style:  TextStyle(
        //     fontSize: 25,
        //     fontWeight: FontWeight.w800,
        //     color: ColorManager.primary
        //   ),
        // ),
        // const VerticalSpace(5),
        // Text(
        //   subTitle!,
        //   style: const TextStyle(
        //     fontSize: 15,
        //     color: Color(0xff78787c)
        //   ),
        // )

    );
  }
}
