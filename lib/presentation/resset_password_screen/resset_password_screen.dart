import '../resset_password_screen/widgets/ressetpassword_item_widget.dart';
import 'controller/resset_password_controller.dart';
import 'models/ressetpassword_item_model.dart';
import 'package:flutter/material.dart';
import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/core/utils/validation_functions.dart';
import 'package:zubair_s_application1/widgets/custom_elevated_button.dart';
import 'package:zubair_s_application1/widgets/custom_icon_button.dart';
import 'package:zubair_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RessetPasswordScreen extends GetWidget<RessetPasswordController> {
  RessetPasswordScreen({Key? key}) : super(key: key);

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
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildEightyOne(),
                          Spacer(),
                          Padding(
                              padding: EdgeInsets.only(left: 26.h),
                              child: Text("lbl_resset_password".tr,
                                  style: theme.textTheme.displaySmall)),
                          SizedBox(height: 17.v),
                          Container(
                              width: 220.h,
                              margin: EdgeInsets.only(left: 26.h),
                              child: Text("msg_please_enter_your".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodyMedium!
                                      .copyWith(height: 1.38))),
                          SizedBox(height: 28.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25.h),
                              child: CustomTextFormField(
                                  controller: controller.passwordController,
                                  hintText: "msg_prelookstudio_gmail_com".tr,
                                  hintStyle:
                                      CustomTextStyles.bodyLargeOnPrimary18,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.emailAddress,
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "err_msg_please_enter_valid_email"
                                          .tr;
                                    }
                                    return null;
                                  })),
                          SizedBox(height: 51.v),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  margin:
                                      EdgeInsets.only(left: 65.h, right: 62.h),
                                  decoration: AppDecoration.outlineIndigo
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder28),
                                  child: Container(
                                      width: 248.h,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 30.h, vertical: 20.v),
                                      decoration: AppDecoration
                                          .outlineIndigo30028
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder28),
                                      child: Text("msg_send_new_password".tr,
                                          style: theme.textTheme.titleSmall)))),
                          SizedBox(height: 76.v),
                          _buildKeyboardsLightNumeric(),
                          SizedBox(height: 1.v)
                        ])))));
  }

  /// Section Widget
  Widget _buildEightyOne() {
    return SizedBox(
        width: double.maxFinite,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              height: 75.v,
              width: 160.h,
              child: Stack(alignment: Alignment.topCenter, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse1262,
                    height: 75.v,
                    width: 50.h,
                    alignment: Alignment.centerLeft),
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse1272,
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
              imagePath: ImageConstant.imgEllipse1282,
              height: 72.v,
              width: 77.h,
              margin: EdgeInsets.only(bottom: 3.v))
        ]));
  }

  /// Section Widget
  Widget _buildKeyboardsLightNumeric() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 6.v),
        decoration: AppDecoration.fillBlueGrayE,
        child: Column(children: [
          Obx(() => GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 47.v,
                  crossAxisCount: 3,
                  mainAxisSpacing: 6.h,
                  crossAxisSpacing: 6.h),
              physics: NeverScrollableScrollPhysics(),
              itemCount: controller.ressetPasswordModelObj.value
                  .ressetpasswordItemList.value.length,
              itemBuilder: (context, index) {
                RessetpasswordItemModel model = controller
                    .ressetPasswordModelObj
                    .value
                    .ressetpasswordItemList
                    .value[index];
                return RessetpasswordItemWidget(model);
              })),
          SizedBox(height: 7.v),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 44.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomElevatedButton(
                            height: 46.v,
                            width: 117.h,
                            text: "lbl_0".tr,
                            buttonStyle: CustomButtonStyles.outlineBlueGrayTL5,
                            buttonTextStyle: theme.textTheme.headlineSmall!),
                        CustomImageView(
                            imagePath: ImageConstant.imgDelete,
                            height: 18.v,
                            width: 22.h,
                            margin: EdgeInsets.only(
                                left: 55.h, top: 13.v, bottom: 15.v))
                      ]))),
          SizedBox(height: 39.v)
        ]));
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft() {
    Get.back();
  }
}
