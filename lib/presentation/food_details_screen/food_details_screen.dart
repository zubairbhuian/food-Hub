import 'controller/food_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:zubair_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:zubair_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:zubair_s_application1/widgets/custom_icon_button.dart';

class FoodDetailsScreen extends GetWidget<FoodDetailsController> {
  const FoodDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 27.v),
                  _buildTwentyFour(),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 17.h, vertical: 21.v),
                      child: Column(children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: Text("msg_ground_beef_tacos".tr,
                                    style: theme.textTheme.headlineMedium))),
                        SizedBox(height: 16.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgSigns1,
                                      height: 17.adaptSize,
                                      width: 17.adaptSize),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 8.h, bottom: 2.v),
                                      child: Text("lbl_4_5".tr,
                                          style: CustomTextStyles
                                              .titleSmallOnPrimary)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 5.h),
                                      child: Text("lbl_30".tr,
                                          style: theme.textTheme.bodyMedium)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 9.h, bottom: 2.v),
                                      child: Text("lbl_see_review".tr,
                                          style: CustomTextStyles
                                              .bodyMediumPrimary13
                                              .copyWith(
                                                  decoration: TextDecoration
                                                      .underline)))
                                ]))),
                        SizedBox(height: 10.v),
                        _buildPrice(),
                        SizedBox(height: 19.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: 317.h,
                                margin: EdgeInsets.only(left: 5.h, right: 18.h),
                                child: Text("msg_brown_the_beef_better".tr,
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .bodyMediumHelveticaNeueBluegray40006
                                        .copyWith(height: 1.57)))),
                        SizedBox(height: 16.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: Text("msg_choice_of_add_on".tr,
                                    style: CustomTextStyles
                                        .titleMediumBluegray90001))),
                        SizedBox(height: 11.v),
                        _buildPepperJulienned(),
                        SizedBox(height: 9.v),
                        Padding(
                            padding: EdgeInsets.only(right: 6.h),
                            child: _buildMasroom(
                                userImage: ImageConstant.imgMaskGroup2,
                                mushroomLabel: "lbl_baby_spinach".tr,
                                priceLabel: "lbl_4_70".tr)),
                        SizedBox(height: 9.v),
                        Padding(
                            padding: EdgeInsets.only(right: 6.h),
                            child: _buildMasroom(
                                userImage: ImageConstant.imgMaskGroup3,
                                mushroomLabel: "lbl_masroom".tr,
                                priceLabel: "lbl_2_50".tr)),
                        SizedBox(height: 58.v),
                        Container(
                            width: 167.h,
                            margin: EdgeInsets.symmetric(horizontal: 87.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 23.h, vertical: 18.v),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: fs.Svg(ImageConstant.imgGroup17860),
                                    fit: BoxFit.cover)),
                            child: Text("lbl_add_to_cart".tr,
                                style: CustomTextStyles.bodyMediumWhiteA70001)),
                        SizedBox(height: 5.v)
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildTwentyFour() {
    return SizedBox(
        height: 206.v,
        width: 323.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage55,
              height: 206.v,
              width: 323.h,
              radius: BorderRadius.circular(10.h),
              alignment: Alignment.center),
          CustomAppBar(
              height: 48.v,
              leadingWidth: 71.h,
              leading: AppbarLeadingIconbutton(
                  imagePath: ImageConstant.imgArrowLeft,
                  margin: EdgeInsets.only(left: 33.h),
                  onTap: () {
                    onTapArrowLeft();
                  }),
              actions: [
                AppbarTrailingIconbutton(
                    imagePath: ImageConstant.imgGroup17481,
                    margin:
                        EdgeInsets.symmetric(horizontal: 43.h, vertical: 5.v))
              ])
        ]));
  }

  /// Section Widget
  Widget _buildPrice() {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 6.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "lbl".tr,
                    style: CustomTextStyles.titleMediumPrimaryMedium),
                TextSpan(
                    text: "lbl_9_502".tr, style: theme.textTheme.headlineLarge)
              ]),
              textAlign: TextAlign.left),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 5.v, bottom: 6.v),
              child: CustomIconButton(
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  padding: EdgeInsets.all(9.h),
                  decoration: IconButtonStyleHelper.outlinePrimaryTL15,
                  child:
                      CustomImageView(imagePath: ImageConstant.imgGroup17841))),
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 12.v, bottom: 13.v),
              child: Text("lbl_02".tr, style: CustomTextStyles.titleMedium16)),
          Padding(
              padding: EdgeInsets.only(left: 11.h, top: 5.v, bottom: 6.v),
              child: CustomIconButton(
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  padding: EdgeInsets.all(9.h),
                  decoration: IconButtonStyleHelper.outlinePrimaryTL151,
                  child:
                      CustomImageView(imagePath: ImageConstant.imgGroup17840)))
        ]));
  }

  /// Section Widget
  Widget _buildPepperJulienned() {
    return Padding(
        padding: EdgeInsets.only(right: 6.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgMaskGroup39x39,
              height: 39.adaptSize,
              width: 39.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 9.h, top: 11.v, bottom: 10.v),
              child: Text("msg_pepper_julienned".tr,
                  style: CustomTextStyles.bodyMediumHelveticaNeueBlack900)),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 12.v, bottom: 9.v),
              child: Text("lbl_2_30".tr,
                  style: CustomTextStyles.bodyMediumHelveticaNeueBlack900)),
          Container(
              height: 23.v,
              width: 27.h,
              margin: EdgeInsets.only(left: 7.h, top: 8.v, bottom: 8.v),
              child: Stack(alignment: Alignment.centerRight, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle125,
                    height: 23.v,
                    width: 27.h,
                    alignment: Alignment.center),
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        height: 13.adaptSize,
                        width: 13.adaptSize,
                        margin: EdgeInsets.only(right: 4.h),
                        decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(6.h),
                            boxShadow: [
                              BoxShadow(
                                  color: theme.colorScheme.primary
                                      .withOpacity(0.4),
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: Offset(0, 4))
                            ])))
              ]))
        ]));
  }

  /// Common widget
  Widget _buildMasroom({
    required String userImage,
    required String mushroomLabel,
    required String priceLabel,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: userImage, height: 39.adaptSize, width: 39.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 9.h, top: 10.v, bottom: 11.v),
          child: Text(mushroomLabel,
              style: CustomTextStyles.bodyMediumHelveticaNeueBlack900
                  .copyWith(color: appTheme.black900))),
      Spacer(),
      Padding(
          padding: EdgeInsets.only(top: 12.v, bottom: 9.v),
          child: Text(priceLabel,
              style: CustomTextStyles.bodyMediumHelveticaNeueBlack900
                  .copyWith(color: appTheme.black900))),
      CustomImageView(
          imagePath: ImageConstant.imgRectangle47,
          height: 23.v,
          width: 27.h,
          margin: EdgeInsets.only(left: 7.h, top: 8.v, bottom: 8.v))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
