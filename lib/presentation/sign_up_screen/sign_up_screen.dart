import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/core/utils/validation_functions.dart';
import 'package:zubair_s_application1/widgets/custom_elevated_button.dart';
import 'package:zubair_s_application1/widgets/custom_text_form_field.dart';
import 'package:zubair_s_application1/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key}) : super(key: key);

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
                      _buildWidgetStack(),
                      SizedBox(height: 26.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 26.h),
                              child: Text("lbl_sign_up".tr,
                                  style: theme.textTheme.displaySmall))),
                      SizedBox(height: 30.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 26.h),
                              child: Text("lbl_full_name".tr,
                                  style: theme.textTheme.bodyLarge))),
                      SizedBox(height: 13.v),
                      _buildFullNameEditText(),
                      SizedBox(height: 27.v),
                      _buildEmailStack(),
                      SizedBox(height: 24.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 29.h),
                              child: Text("lbl_password".tr,
                                  style: theme.textTheme.bodyLarge))),
                      SizedBox(height: 13.v),
                      _buildPasswordEditText(),
                      SizedBox(height: 33.v),
                      Container(
                          margin: EdgeInsets.only(left: 65.h, right: 62.h),
                          decoration: AppDecoration.outlineIndigo.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder28),
                          child: _buildSignupButton()),
                      SizedBox(height: 33.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_already_have_an".tr,
                                style: CustomTextStyles
                                    .bodyMediumErrorContainer_1),
                            TextSpan(
                                text: "lbl_login".tr,
                                style: CustomTextStyles.bodyMediumPrimary_1)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 50.v),
                      _buildSignupWithStack(),
                      SizedBox(height: 5.v)
                    ]))),
            bottomNavigationBar: _buildGOOGLEvalue()));
  }

  /// Section Widget
  Widget _buildWidgetStack() {
    return SizedBox(
        width: double.maxFinite,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              height: 75.v,
              width: 160.h,
              child: Stack(alignment: Alignment.topCenter, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse126,
                    height: 75.v,
                    width: 50.h,
                    alignment: Alignment.centerLeft),
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse127,
                    height: 66.v,
                    width: 160.h,
                    alignment: Alignment.topCenter)
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgEllipse128,
              height: 72.v,
              width: 77.h,
              margin: EdgeInsets.only(bottom: 3.v))
        ]));
  }

  /// Section Widget
  Widget _buildFullNameEditText() {
    return Padding(
        padding: EdgeInsets.only(left: 26.h, right: 24.h),
        child: CustomTextFormField(
            controller: controller.fullNameEditTextController,
            hintText: "lbl_arlene_mccoy".tr,
            hintStyle: CustomTextStyles.titleMediumOnPrimary));
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
        controller: controller.emailController,
        hintText: "msg_prelookstudio_gmail_com".tr,
        hintStyle: CustomTextStyles.bodyLargeOnPrimary18,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        },
        obscureText: true);
  }

  /// Section Widget
  Widget _buildEmailStack() {
    return SizedBox(
        height: 97.v,
        width: 324.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  width: 84.h,
                  margin: EdgeInsets.only(left: 13.h),
                  child: Text("lbl_1679_30".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          CustomTextStyles.headlineSmallSofiaProWhiteA70001))),
          Align(
              alignment: Alignment.topCenter,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text("lbl_e_mail".tr,
                            style: theme.textTheme.bodyLarge)),
                    SizedBox(height: 13.v),
                    _buildEmail()
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildPasswordEditText() {
    return Padding(
        padding: EdgeInsets.only(left: 26.h, right: 24.h),
        child: Obx(() => CustomTextFormField(
            controller: controller.passwordEditTextController,
            suffix: InkWell(
                onTap: () {
                  controller.isShowPassword.value =
                      !controller.isShowPassword.value;
                },
                child: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 25.v, 22.h, 27.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgGroup,
                        height: 12.v,
                        width: 17.h))),
            suffixConstraints: BoxConstraints(maxHeight: 65.v),
            obscureText: controller.isShowPassword.value)));
  }

  /// Section Widget
  Widget _buildSignupButton() {
    return CustomElevatedButton(text: "lbl_sign_up2".tr);
  }

  /// Section Widget
  Widget _buildSignupWithStack() {
    return SizedBox(
        height: 14.v,
        width: 324.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Text("lbl_sign_up_with".tr,
                  style: CustomTextStyles.titleSmallErrorContainer)),
          CustomImageView(
              imagePath: ImageConstant.imgGroup17868Gray40002,
              height: 1.v,
              width: 324.h,
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 4.v))
        ]));
  }

  /// Section Widget
  Widget _buildGooglevalueEditText() {
    return CustomTextFormField(
        width: 147.h,
        controller: controller.googlevalueEditTextController,
        hintText: "lbl_google".tr,
        textInputAction: TextInputAction.done,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(13.h, 14.v, 14.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgGroup17967,
                height: 30.adaptSize,
                width: 30.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 57.v),
        contentPadding: EdgeInsets.only(top: 22.v, right: 30.h, bottom: 22.v),
        borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL28);
  }

  /// Section Widget
  Widget _buildGOOGLEvalue() {
    return Padding(
        padding: EdgeInsets.only(left: 36.h, right: 25.h, bottom: 28.v),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          GestureDetector(
              onTap: () {
                onTapFACEBOOK();
              },
              child: Container(
                  width: 120.h,
                  margin: EdgeInsets.only(top: 11.v, bottom: 6.v),
                  decoration: AppDecoration.outlineBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder28),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgGroup17863,
                            height: 39.v,
                            width: 38.h),
                        Padding(
                            padding: EdgeInsets.only(top: 12.v, bottom: 14.v),
                            child: Text("lbl_facebook".tr,
                                style: CustomTextStyles.bodyMediumBlack900))
                      ]))),
          _buildGooglevalueEditText()
        ]));
  }

  onTapFACEBOOK() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
