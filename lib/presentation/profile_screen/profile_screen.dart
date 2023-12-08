import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/core/utils/validation_functions.dart';
import 'package:zubair_s_application1/widgets/custom_icon_button.dart';
import 'package:zubair_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends GetWidget<ProfileController> {
  ProfileScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      _buildArrowLeftSection(),
                      SizedBox(height: 13.v),
                      Text("lbl_eljad_eendaz".tr,
                          style: theme.textTheme.titleLarge),
                      SizedBox(height: 8.v),
                      Text("lbl_edit_profile".tr,
                          style: theme.textTheme.bodyMedium),
                      SizedBox(height: 48.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 27.h),
                              child: Text("lbl_full_name".tr,
                                  style: theme.textTheme.bodyLarge))),
                      SizedBox(height: 13.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18.h),
                          child: CustomTextFormField(
                              controller: controller.fullNameController,
                              hintText: "lbl_eljad_eendaz".tr,
                              hintStyle: CustomTextStyles.titleLargeOnPrimary,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16.h, vertical: 22.v),
                              borderDecoration:
                                  TextFormFieldStyleHelper.outlinePrimaryTL10)),
                      SizedBox(height: 27.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 28.h),
                              child: Text("lbl_e_mail".tr,
                                  style: theme.textTheme.bodyLarge))),
                      SizedBox(height: 13.v),
                      _buildEmailSection(),
                      SizedBox(height: 24.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 28.h),
                              child: Text("lbl_phone_number".tr,
                                  style: theme.textTheme.bodyLarge))),
                      SizedBox(height: 13.v),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18.h),
                          child: CustomTextFormField(
                              controller: controller.phoneNumberController,
                              hintText: "msg_1_783_0986_8786".tr,
                              hintStyle: CustomTextStyles.bodyLargeOnPrimary,
                              textInputAction: TextInputAction.done,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16.h, vertical: 24.v))),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildArrowLeftSection() {
    return SizedBox(
        height: 222.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 26.h, vertical: 37.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgGroup20),
                          fit: BoxFit.cover)),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 52.v),
                        CustomIconButton(
                            height: 38.adaptSize,
                            width: 38.adaptSize,
                            padding: EdgeInsets.all(14.h),
                            onTap: () {
                              onTapBtnArrowLeft();
                            },
                            child: CustomImageView(
                                imagePath: ImageConstant.imgArrowLeft))
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
                      height: 108.adaptSize,
                      width: 108.adaptSize,
                      padding:
                          EdgeInsets.symmetric(horizontal: 9.h, vertical: 5.v),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.circleBorder54),
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                                height: 90.adaptSize,
                                width: 90.adaptSize,
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgImage13,
                                          height: 90.adaptSize,
                                          width: 90.adaptSize,
                                          radius: BorderRadius.circular(45.h),
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 9.h),
                                              padding: EdgeInsets.all(3.h),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10),
                                              child: Container(
                                                  height: 11.adaptSize,
                                                  width: 11.adaptSize,
                                                  decoration: BoxDecoration(
                                                      color: theme
                                                          .colorScheme.primary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.h)))))
                                    ]))),
                        CustomImageView(
                            imagePath: ImageConstant.imgGroup18153,
                            height: 27.adaptSize,
                            width: 27.adaptSize,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(right: 5.h))
                      ]))))
        ]));
  }

  /// Section Widget
  Widget _buildEmailSection() {
    return SizedBox(
        height: 68.v,
        width: 341.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  width: 84.h,
                  margin: EdgeInsets.only(left: 21.h),
                  child: Text("lbl_1679_30".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          CustomTextStyles.headlineSmallSofiaProWhiteA70001))),
          CustomTextFormField(
              width: 341.h,
              controller: controller.emailController,
              hintText: "msg_prelookstudio_gmail_com".tr,
              hintStyle: CustomTextStyles.bodyLargeOnPrimary,
              textInputType: TextInputType.emailAddress,
              alignment: Alignment.topCenter,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v))
        ]));
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft() {
    Get.back();
  }
}
