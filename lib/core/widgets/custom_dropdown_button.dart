import 'package:alpha_brand/Presentation/resources/color_manager.dart';
import 'package:alpha_brand/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomDropDown extends StatefulWidget {
final String t1;
final String t2;
final String t3;
final String hint;
   CustomDropDown({Key? key, required this.t1, required this.t2, required this.t3, required this.hint}) : super(key: key);

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  late List<String> items =[widget.t1 , widget.t2 , widget.t3 ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Expanded(
        child: Padding(
          padding:  REdgeInsetsDirectional.only(start: 10,end: 10),
          child: Container(
            color: ColorManager.secodnary,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                focusedBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:BorderSide(
                        width: 3,
                        color: ColorManager.secodnary
                    )
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:BorderSide(
                    width: 3,
                    color: ColorManager.secodnary
                  )
                )
              ),

                iconSize: 30,
                hint:TextCustom(
                  text: widget.hint,
                  fontSize: 18,
                ),
                icon: Icon(Icons.keyboard_arrow_down,color: ColorManager.primary,),
                items: items.map((e) => DropdownMenuItem(
                  child: Text("$e"),
                  value: e,)).toList(),
                onChanged: (val){
                  print('on Changed');
                }
                ),
          ),
        ),
      ),
    )
    ;
  }
}
