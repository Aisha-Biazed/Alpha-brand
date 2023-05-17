import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'Presentation/checkout/widgets/cart_body_view.dart';
import 'Presentation/resources/color_manager.dart';
import 'Presentation/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder:(context,child){
        return GetMaterialApp(
            theme: ThemeData(fontFamily: 'Poppins',scaffoldBackgroundColor: ColorManager.white,),
            debugShowCheckedModeBanner: false,
            home:  const CartBodyView()
        );
      }
    );
  }
}


