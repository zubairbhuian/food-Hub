import 'controller/rating_controller.dart';
import 'package:flutter/material.dart';
import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/widgets/custom_elevated_button.dart';
import 'package:zubair_s_application1/widgets/custom_icon_button.dart';

class RatingScreen extends GetWidget<RatingController> {
  const RatingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 27.v),
                child: Column(children: [
                  _buildArrowLeftStack(),
                  SizedBox(height: 7.v),
                  Text("lbl_pizza_hut".tr, style: theme.textTheme.titleLarge),
                  SizedBox(height: 10.v),
                  Text("msg_4102_pretty_view2".tr,
                      style: CustomTextStyles.bodyMedium13),
                  SizedBox(height: 13.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                        height: 5.adaptSize,
                        width: 5.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 4.v),
                        decoration: BoxDecoration(
                            color: appTheme.green400,
                            borderRadius: BorderRadius.circular(2.h))),
                    Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text("lbl_order_delivered".tr,
                            style: CustomTextStyles.bodyMediumGreen400))
                  ]),
                  SizedBox(height: 31.v),
                  Text("msg_please_rate_delivery".tr,
                      style: CustomTextStyles.titleMediumOnPrimary_1),
                  SizedBox(height: 24.v),
                  Text("lbl_good".tr,
                      style: CustomTextStyles.titleLargePrimary),
                  SizedBox(height: 15.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 47.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgSigns1,
                                height: 31.v,
                                width: 32.h),
                            CustomImageView(
                                imagePath: ImageConstant.imgSigns1,
                                height: 31.v,
                                width: 32.h,
                                margin: EdgeInsets.only(left: 15.h)),
                            CustomImageView(
                                imagePath: ImageConstant.imgSigns1,
                                height: 31.v,
                                width: 32.h,
                                margin: EdgeInsets.only(left: 15.h)),
                            CustomImageView(
                                imagePath: ImageConstant.imgSigns1,
                                height: 31.v,
                                width: 32.h,
                                margin: EdgeInsets.only(left: 15.h)),
                            CustomImageView(
                                imagePath: ImageConstant.imgGroupAmber40031x32,
                                height: 31.v,
                                width: 32.h,
                                margin: EdgeInsets.only(left: 18.h))
                          ])),
                  SizedBox(height: 44.v),
                  _buildTwentySevenRow(),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildSubmitButton()));
  }

  /// Section Widget
  Widget _buildArrowLeftStack() {
    return SizedBox(
        height: 201.v,
        width: 323.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                  height: 146.v,
                  width: 323.h,
                  child: Stack(alignment: Alignment.topLeft, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage79,
                        height: 146.v,
                        width: 323.h,
                        radius: BorderRadius.circular(15.h),
                        alignment: Alignment.center),
                    Padding(
                        padding: EdgeInsets.only(left: 7.h, top: 10.v),
                        child: CustomIconButton(
                            height: 38.adaptSize,
                            width: 38.adaptSize,
                            padding: EdgeInsets.all(14.h),
                            alignment: Alignment.topLeft,
                            onTap: () {
                              onTapBtnArrowLeft();
                            },
                            child: CustomImageView(
                                imagePath: ImageConstant.imgArrowLeft)))
                  ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.circleBorder54),
                  child: Container(
                      height: 104.adaptSize,
                      width: 104.adaptSize,
                      padding: EdgeInsets.all(11.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.circleBorder54),
                      child: Stack(alignment: Alignment.center, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgVector3,
                            height: 4.v,
                            width: 6.h,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(right: 14.h, bottom: 13.v)),
                        Align(
                            alignment: Alignment.center,
                            child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.all(0),
                                color: appTheme.amber400,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadiusStyle
                                        .roundedBorder40),
                                child: Container(
                                    height: 81.adaptSize,
                                    width: 81.adaptSize,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 2.h, vertical: 1.v),
                                    decoration: AppDecoration.outlineAmber
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder40),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                  height: 21.adaptSize,
                                                  width: 21.adaptSize,
                                                  decoration: BoxDecoration(
                                                      color:
                                                          appTheme.whiteA70001,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.h),
                                                      boxShadow: [
                                                        BoxShadow(
                                                            color: appTheme
                                                                .gray400
                                                                .withOpacity(
                                                                    0.4),
                                                            spreadRadius: 2.h,
                                                            blurRadius: 2.h,
                                                            offset:
                                                                Offset(0, 2.39))
                                                      ]))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage29,
                                              height: 56.adaptSize,
                                              width: 56.adaptSize,
                                              radius:
                                                  BorderRadius.circular(28.h),
                                              alignment: Alignment.center),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGroup18068,
                                              height: 15.adaptSize,
                                              width: 15.adaptSize,
                                              alignment: Alignment.bottomRight,
                                              margin: EdgeInsets.only(
                                                  right: 3.h, bottom: 3.v))
                                        ]))))
                      ]))))
        ]));
  }

  /// Section Widget
  Widget _buildTwentySevenRow() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 19.v),
        decoration: AppDecoration.outlineGray2001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
              height: 128.v,
              child: VerticalDivider(
                  width: 1.h,
                  thickness: 1.v,
                  color: appTheme.amber400,
                  endIndent: 104.h)),
          Padding(
              padding: EdgeInsets.only(left: 5.h, top: 2.v, bottom: 109.v),
              child: Text("lbl_write_review".tr,
                  style: CustomTextStyles.bodyLargeBlack900_1))
        ]));
  }

  /// Section Widget
  Widget _buildSubmitButton() {
    return CustomElevatedButton(
        width: 248.h,
        text: "lbl_submit".tr,
        margin: EdgeInsets.only(left: 65.h, right: 62.h, bottom: 33.v),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL28);
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft() {
    Get.back();
  }
}
