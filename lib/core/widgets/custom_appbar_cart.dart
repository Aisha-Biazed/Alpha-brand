import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Presentation/resources/color_manager.dart';


AppBar CustomAppBar(String title, List<Widget>? action) => AppBar(
      title: Text(title, textAlign: TextAlign.right),

      // bottom: ,
      backgroundColor: ColorManager.primary,
      actions: action,
      automaticallyImplyLeading: false,
      toolbarHeight: 100.h,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(22),
              bottomRight: Radius.circular(22))),
    );
