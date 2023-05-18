import 'package:alpha_brand/Presentation/resources/assets_manager.dart';
import 'package:alpha_brand/Presentation/resources/color_manager.dart';
import 'package:alpha_brand/Presentation/resources/strings_manager.dart';
import 'package:alpha_brand/Presentation/signIn/widgets/sign_in_body.dart';
import 'package:alpha_brand/core/widgets/custom_buttons.dart';
import 'package:alpha_brand/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import '../../../resources/routes_manager.dart';
import '../../../signIn/sign_in_view.dart';
import '../../../signIn/sign_in_view.dart';
import 'custom_bottomNavigation.dart';
import 'custom_indicator.dart';
import 'custom_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({Key? key}) : super(key: key);

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavigation(),
      backgroundColor: ColorManager.white,
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                RSizedBox(
                  height: 590,
                  width: 559,
                  child: CustomPageView(
                    pageController: pageController,
                  ),
                ),
                Padding(
                  padding: REdgeInsetsDirectional.only(
                      start: 400, top: 43, bottom: 13, end: 11),
                  child: Container(
                      decoration: BoxDecoration(
                          color: ColorManager.dark,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(9))),
                      width: 41.w,
                      height: 51.h,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.signInRote);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                        ),
                        color: ColorManager.white,
                      )),
                ),
                Positioned(
                    left: 0,
                    right: 0,
                    bottom: 18,
                    child: CustomIndicator(
                      dotIndex:
                          pageController!.hasClients ? pageController?.page : 0,
                    )),
              ],
            ),
            Container(
              width: double.infinity,
              height: 5,
              color: ColorManager.primary,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 21, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextCustom(
                    text: AppStrings.onBoardingSubTitle1,
                    textColor: ColorManager.dark,
                    fontSize: 20.sp,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            ImageAssets.onboardingIcon1,
                            height: 11.87.w,
                            width: 11.87.w,
                          ),
                          const RSizedBox(width: 3),
                          TextCustom(
                            text: AppStrings.onBoardingNextIcon1,
                            textColor: ColorManager.lightGrey,
                            fontSize: 15.sp,
                          ),
                        ],
                      ),
                      const RSizedBox(width: 24.9),
                      Row(
                        children: [
                          Image.asset(
                            ImageAssets.onboardingIcon2,
                            height: 11.87.w,
                            width: 11.87.w,
                          ),
                          const RSizedBox(width: 3),
                          TextCustom(
                            text: AppStrings.onBoardingNextIcon2,
                            textColor: ColorManager.lightGrey,
                            fontSize: 15.sp,
                          ),
                        ],
                      ),
                    ],
                  ),
                  RSizedBox(
                    width: 150,
                    height: 41,
                    child: Container(
                      decoration: BoxDecoration(
                          color: ColorManager.secodnary,
                          borderRadius: BorderRadius.circular(12)
                      ),
                      padding: REdgeInsetsDirectional.only(start: 20, end: 10),
                      child: Row(
                        children: [
                          TextCustom(
                            text: AppStrings.onBoardingBtn1,
                            textColor: ColorManager.primary,
                          ),
                          10.horizontalSpace,
                          TextCustom(
                              text: AppStrings.onBoardingBtn1_2,
                              textColor: ColorManager.dark),
                        ],
                      ),
                    ),
                  ),
                  10.verticalSpace,
                  TextCustom(
                    text: AppStrings.onBoardingSubTitle2,
                    textColor: ColorManager.dark,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        ImageAssets.onboardingIcon3,
                        height: 11.87.w,
                        width: 11.87.w,
                      ),
                      const RSizedBox(width: 6),
                      TextCustom(
                        text: AppStrings.onBoardingNextIcon3,
                        textColor: ColorManager.lightGrey,
                        fontSize: 15.sp,
                      ),
                    ],
                  ),
                  6.verticalSpace,
                  Row(
                    children: [
                      Image.asset(
                        ImageAssets.onboardingIcon4,
                        height: 11.87.w,
                        width: 11.87.w,
                      ),
                      const RSizedBox(width: 6),
                      TextCustom(
                        text: AppStrings.onBoardingNextIcon4,
                        textColor: ColorManager.lightGrey,
                        fontSize: 15.sp,
                      ),
                    ],
                  ),
                  6.verticalSpace,
                  Row(
                    children: [
                      Image.asset(
                        ImageAssets.onboardingIcon5,
                        height: 11.87.w,
                        width: 11.87.w,
                      ),
                      const RSizedBox(width: 6),
                      TextCustom(
                        text: AppStrings.onBoardingNextIcon5,
                        textColor: ColorManager.lightGrey,
                        fontSize: 15.sp,
                      ),
                    ],
                  ),
                  10.verticalSpace,
                  TextCustom(
                    text: AppStrings.onBoardingSubTitle3,
                    textColor: ColorManager.dark,
                  ),
                  6.verticalSpace,
                  RSizedBox(
                      height: 300,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                RSizedBox(
                                    height: 150,
                                    child:
                                        Image.asset(ImageAssets.imglistview1)),
                                const TextCustom(
                                  text: AppStrings.onBoardingListViewTxt,
                                ),
                                TextCustom(
                                    text: AppStrings.onBoardingListViewsubTxt1,
                                    fontSize: 13,
                                    textColor: ColorManager.lightGrey),
                                TextCustom(
                                    text: AppStrings.onBoardingListViewsubTxt,
                                    fontSize: 13,
                                    textColor: ColorManager.lightGrey),
                              ],
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(
                              width: 20,
                            );
                          },
                          itemCount: 5))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
