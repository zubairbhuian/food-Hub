import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/core/utils/validation_functions.dart';
import 'package:zubair_s_application1/widgets/custom_elevated_button.dart';
import 'package:zubair_s_application1/widgets/custom_icon_button.dart';
import 'package:zubair_s_application1/widgets/custom_text_form_field.dart';
import 'package:zubair_s_application1/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

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
                      _buildFiftyStack(),
                      Spacer(),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 26.h),
                              child: Text("lbl_login".tr,
                                  style: theme.textTheme.displaySmall))),
                      SizedBox(height: 28.v),
                      _buildFortyNineStack(),
                      SizedBox(height: 24.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 29.h),
                              child: Text("lbl_password".tr,
                                  style: theme.textTheme.bodyLarge))),
                      SizedBox(height: 13.v),
                      _buildPasswordEditText(),
                      SizedBox(height: 32.v),
                      Text("msg_forgot_password".tr,
                          style: CustomTextStyles.bodyMediumPrimary),
                      SizedBox(height: 27.v),
                      Container(
                          margin: EdgeInsets.only(left: 65.h, right: 62.h),
                          decoration: AppDecoration.outlineIndigo.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder28),
                          child: _buildLoginButton()),
                      SizedBox(height: 32.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_don_t_have_an_account2".tr,
                                style: CustomTextStyles
                                    .bodyMediumErrorContainer_1),
                            TextSpan(
                                text: "lbl_sign_up".tr,
                                style: CustomTextStyles.bodyMediumPrimary_1)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 52.v),
                      _buildFiftyOneStack(),
                      SizedBox(height: 14.v)
                    ]))),
            bottomNavigationBar: _buildGOOGLEvalue()));
  }

  /// Section Widget
  Widget _buildFiftyStack() {
    return SizedBox(
        width: double.maxFinite,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              height: 75.v,
              width: 160.h,
              child: Stack(alignment: Alignment.topCenter, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse12675x50,
                    height: 75.v,
                    width: 50.h,
                    alignment: Alignment.centerLeft),
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse12766x160,
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
              imagePath: ImageConstant.imgEllipse12872x77,
              height: 72.v,
              width: 77.h,
              margin: EdgeInsets.only(bottom: 3.v))
        ]));
  }

  /// Section Widget
  Widget _buildEmailColumn() {
    return CustomTextFormField(
        controller: controller.emailColumnController,
        hintText: "msg_your_email_or_phone".tr,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildFortyNineStack() {
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
                    _buildEmailColumn()
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildPasswordEditText() {
    return Padding(
        padding: EdgeInsets.only(left: 26.h, right: 24.h),
        child: Obx(() => CustomTextFormField(
            controller: controller.passwordEditTextController,
            hintText: "lbl_password".tr,
            textInputType: TextInputType.visiblePassword,
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
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: controller.isShowPassword.value,
            contentPadding:
                EdgeInsets.only(left: 20.h, top: 24.v, bottom: 24.v))));
  }

  /// Section Widget
  Widget _buildLoginButton() {
    return CustomElevatedButton(text: "lbl_login".tr.toUpperCase());
  }

  /// Section Widget
  Widget _buildFiftyOneStack() {
    return SizedBox(
        height: 14.v,
        width: 324.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Text("lbl_sign_in_with2".tr,
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
  Widget _buildGoogleValueEditText() {
    return CustomTextFormField(
        width: 147.h,
        controller: controller.googleValueEditTextController,
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
          _buildGoogleValueEditText()
        ]));
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft() {
    Get.back();
  }

  onTapFACEBOOK() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
