import 'controller/phone_registration_controller.dart';
import 'package:flutter/material.dart';
import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/widgets/custom_elevated_button.dart';
import 'package:zubair_s_application1/widgets/custom_icon_button.dart';

class PhoneRegistrationScreen extends GetWidget<PhoneRegistrationController> {
  const PhoneRegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildArrowLeftStack(),
                      Spacer(flex: 24),
                      Padding(
                          padding: EdgeInsets.only(left: 26.h),
                          child: Text("lbl_registration".tr,
                              style: theme.textTheme.displaySmall)),
                      SizedBox(height: 13.v),
                      Container(
                          width: 217.h,
                          margin: EdgeInsets.only(left: 26.h),
                          child: Text("msg_enter_your_phone".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(height: 1.38))),
                      SizedBox(height: 28.v),
                      _buildVectorTenRow(),
                      SizedBox(height: 51.v),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: EdgeInsets.only(left: 65.h, right: 62.h),
                              decoration: AppDecoration.outlineIndigo.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder28),
                              child:
                                  CustomElevatedButton(text: "lbl_send".tr))),
                      Spacer(flex: 75)
                    ]))));
  }

  /// Section Widget
  Widget _buildArrowLeftStack() {
    return SizedBox(
        width: double.maxFinite,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              height: 75.v,
              width: 160.h,
              child: Stack(alignment: Alignment.topCenter, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse1263,
                    height: 75.v,
                    width: 50.h,
                    alignment: Alignment.centerLeft),
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse1273,
                    height: 66.v,
                    width: 160.h,
                    alignment: Alignment.topCenter),
                Padding(
                    padding: EdgeInsets.only(left: 27.h),
                    child: CustomIconButton(
                        height: 38.adaptSize,
                        width: 38.adaptSize,
                        padding: EdgeInsets.all(14.h),
                        alignment: Alignment.bottomLeft,
                        onTap: () {
                          onTapBtnArrowLeft();
                        },
                        child: CustomImageView(
                            imagePath: ImageConstant.imgArrowLeft)))
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgEllipse1283,
              height: 72.v,
              width: 77.h,
              margin: EdgeInsets.only(bottom: 3.v))
        ]));
  }

  /// Section Widget
  Widget _buildVectorTenRow() {
    return Align(
        alignment: Alignment.center,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 25.h),
            padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 16.v),
            decoration: AppDecoration.outlinePrimary
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage117,
                      height: 30.v,
                      width: 49.h,
                      radius: BorderRadius.circular(4.h),
                      margin: EdgeInsets.only(bottom: 1.v)),
                  CustomImageView(
                      imagePath: ImageConstant.imgVector10,
                      height: 5.v,
                      width: 10.h,
                      margin:
                          EdgeInsets.only(left: 13.h, top: 13.v, bottom: 13.v)),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 13.h, top: 5.v, bottom: 8.v),
                      child: Text("msg_1_230_333_0181".tr,
                          style: CustomTextStyles.bodyLargeOnPrimary))
                ])));
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft() {
    Get.back();
  }
}
