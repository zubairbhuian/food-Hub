import 'controller/review_resturent_controller.dart';
import 'package:flutter/material.dart';
import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/widgets/custom_elevated_button.dart';
import 'package:zubair_s_application1/widgets/custom_icon_button.dart';

class ReviewResturentScreen extends GetWidget<ReviewResturentController> {
  const ReviewResturentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 37.v),
                child: Column(children: [
                  CustomIconButton(
                      height: 38.adaptSize,
                      width: 38.adaptSize,
                      padding: EdgeInsets.all(14.h),
                      alignment: Alignment.centerLeft,
                      onTap: () {
                        onTapBtnArrowLeft();
                      },
                      child: CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft)),
                  SizedBox(height: 44.v),
                  Container(
                      height: 79.adaptSize,
                      width: 79.adaptSize,
                      padding: EdgeInsets.symmetric(
                          horizontal: 11.h, vertical: 10.v),
                      decoration: AppDecoration.outlineBluegray1005.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgImage2956x56,
                          height: 56.adaptSize,
                          width: 56.adaptSize,
                          radius: BorderRadius.circular(28.h),
                          alignment: Alignment.center)),
                  SizedBox(height: 62.v),
                  Container(
                      width: 316.h,
                      margin: EdgeInsets.symmetric(horizontal: 3.h),
                      child: Text("msg_how_was_your_last".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.headlineLargeBlack900
                              .copyWith(height: 1.20))),
                  SizedBox(height: 28.v),
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
                  SizedBox(height: 64.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("lbl_write".tr,
                          style: CustomTextStyles.bodyLargeBlack900_1)),
                  SizedBox(height: 15.v),
                  Divider(color: appTheme.black900.withOpacity(0.2)),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildSubmitButton()));
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
