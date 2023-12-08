import 'controller/add_new_address_controller.dart';
import 'package:flutter/material.dart';
import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:zubair_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:zubair_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:zubair_s_application1/widgets/custom_elevated_button.dart';
import 'package:zubair_s_application1/widgets/custom_outlined_button.dart';
import 'package:zubair_s_application1/widgets/custom_text_form_field.dart';

class AddNewAddressScreen extends GetWidget<AddNewAddressController> {
  const AddNewAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 23.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_full_name".tr,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 13.v),
                      _buildFullName(),
                      SizedBox(height: 22.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_mobile_number".tr,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 13.v),
                      _buildMobileNumber(),
                      SizedBox(height: 22.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_state".tr,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 13.v),
                      _buildSelectState(),
                      SizedBox(height: 24.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_city".tr,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 11.v),
                      _buildSelectCity(),
                      SizedBox(height: 24.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("msg_street_include".tr,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 11.v),
                      _buildStreetValue(),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildSave()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 64.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 26.h, top: 9.v, bottom: 9.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_add_new_address".tr));
  }

  /// Section Widget
  Widget _buildFullName() {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: CustomTextFormField(
            controller: controller.fullNameController,
            hintText: "lbl_arlene_mccoy2".tr,
            hintStyle: CustomTextStyles.bodyLargeOnPrimary));
  }

  /// Section Widget
  Widget _buildMobileNumber() {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: CustomTextFormField(
            controller: controller.mobileNumberController,
            hintText: "lbl_018_49862746".tr,
            hintStyle: CustomTextStyles.bodyLargeOnPrimary));
  }

  /// Section Widget
  Widget _buildSelectState() {
    return Container(
        margin: EdgeInsets.only(left: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 16.v),
        decoration: AppDecoration.outlineGray2001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 5.v, bottom: 8.v),
                  child: Text("lbl_slect_state".tr,
                      style: CustomTextStyles.bodyLargeOnPrimary)),
              CustomImageView(
                  imagePath: ImageConstant.imgGroup17961,
                  height: 9.v,
                  width: 5.h,
                  margin: EdgeInsets.only(top: 21.v, right: 7.h))
            ]));
  }

  /// Section Widget
  Widget _buildSelectCity() {
    return CustomOutlinedButton(
        height: 65.v,
        text: "lbl_select_city".tr,
        margin: EdgeInsets.only(left: 2.h),
        buttonStyle: CustomButtonStyles.outlineGray,
        buttonTextStyle: CustomTextStyles.bodyLargeOnPrimary);
  }

  /// Section Widget
  Widget _buildStreetValue() {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: CustomTextFormField(
            controller: controller.streetValueController,
            hintText: "lbl_street".tr,
            textInputAction: TextInputAction.done));
  }

  /// Section Widget
  Widget _buildSave() {
    return CustomElevatedButton(
        width: 248.h,
        text: "lbl_save".tr,
        margin: EdgeInsets.only(left: 65.h, right: 62.h, bottom: 33.v),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL28);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
