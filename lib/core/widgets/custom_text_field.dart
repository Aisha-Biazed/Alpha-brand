import 'package:alpha_brand/Presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key,  this.inputType, this.suffexIcon, this.onSaved, this.onChanged, this.maxLines, required this.hintText}) : super(key: key);
  final TextInputType? inputType;
  final Widget? suffexIcon;
  final ValueSetter? onSaved;
  final ValueSetter? onChanged;
  final int? maxLines;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      onChanged: onChanged,
      onSaved: onSaved,
      maxLines: maxLines,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.w),
            borderSide: BorderSide(
                color: ColorManager.secodnary
            )

        ),
        focusedBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.w),
            borderSide: BorderSide(
                color: ColorManager.secodnary
            )

        ) ,
        hintText:hintText ,
        filled: true,
        fillColor: ColorManager.secodnary,
        border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.w),
          borderSide: BorderSide(
            color: ColorManager.secodnary
          )

        )
      ),
    );
  }
}
// flutter native
