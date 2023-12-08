import 'controller/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/widgets/custom_elevated_button.dart';
import 'package:zubair_s_application1/widgets/custom_outlined_button.dart';
import 'package:zubair_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class WelcomeScreen extends GetWidget<WelcomeController> {
  const WelcomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA70001,
            gradient: LinearGradient(
              begin: Alignment(0.45, 0),
              end: Alignment(0.44, 0.9),
              colors: [
                appTheme.blueGray70000,
                theme.colorScheme.onSecondaryContainer,
              ],
            ),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgWelcome,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 27.h,
              vertical: 26.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSkipButton(),
                SizedBox(height: 99.v),
                Container(
                  width: 281.h,
                  margin: EdgeInsets.only(right: 38.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_welcome_to".tr,
                          style: CustomTextStyles.displayLargeOnPrimary,
                        ),
                        TextSpan(
                          text: "lbl_foodhub".tr,
                          style: theme.textTheme.displayMedium,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 15.v),
                Opacity(
                  opacity: 0.87,
                  child: Container(
                    width: 246.h,
                    margin: EdgeInsets.only(
                      left: 2.h,
                      right: 71.h,
                    ),
                    child: Text(
                      "msg_your_favourite_foods".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyLargeBluegray800a9.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 16.v,
                    width: 293.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_sign_in_with".tr,
                            style: CustomTextStyles.titleMediumWhiteA70001,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup17868,
                          height: 1.v,
                          width: 293.h,
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 17.v),
                _buildFACEBOOK(),
                SizedBox(height: 23.v),
                _buildStartWithEmailOrPhoneButton(),
                SizedBox(height: 20.v),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 37.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 3.v,
                            bottom: 2.v,
                          ),
                          child: Text(
                            "msg_already_have_an".tr,
                            style: CustomTextStyles.bodyLargeWhiteA70001,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text(
                            "lbl_sign_in".tr,
                            style: CustomTextStyles.titleMediumWhiteA70001
                                .copyWith(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSkipButton() {
    return CustomElevatedButton(
      height: 32.v,
      width: 55.h,
      text: "lbl_skip".tr,
      buttonStyle: CustomButtonStyles.outlineBlueGray,
      buttonTextStyle: CustomTextStyles.bodyMediumPrimary,
      alignment: Alignment.centerRight,
    );
  }

  /// Section Widget
  Widget _buildFacebookButton() {
    return Expanded(
      child: CustomElevatedButton(
        height: 54.v,
        text: "lbl_facebook".tr,
        margin: EdgeInsets.only(right: 17.h),
        leftIcon: Container(
          margin: EdgeInsets.only(right: 8.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup17863,
            height: 29.v,
            width: 28.h,
          ),
        ),
        buttonStyle: CustomButtonStyles.outlineBlueGrayTL27,
        buttonTextStyle: CustomTextStyles.bodyMediumBlack900,
      ),
    );
  }

  /// Section Widget
  Widget _buildGoogleEditText() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 17.h),
        child: CustomTextFormField(
          controller: controller.googleEditTextController,
          hintText: "lbl_google".tr,
          textInputAction: TextInputAction.done,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(12.h, 13.v, 15.h, 12.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup17967,
              height: 28.adaptSize,
              width: 28.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 54.v,
          ),
          contentPadding: EdgeInsets.only(
            top: 20.v,
            right: 25.h,
            bottom: 20.v,
          ),
          borderDecoration: TextFormFieldStyleHelper.outlineBlueGray,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFACEBOOK() {
    return Padding(
      padding: EdgeInsets.only(
        left: 2.h,
        right: 3.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildFacebookButton(),
          _buildGoogleEditText(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStartWithEmailOrPhoneButton() {
    return CustomOutlinedButton(
      text: "msg_start_with_email".tr,
    );
  }
}
