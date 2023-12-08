import '../vefification_code_screen/widgets/vefificationcode_item_widget.dart';
import 'controller/vefification_code_controller.dart';
import 'models/vefificationcode_item_model.dart';
import 'package:flutter/material.dart';
import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/widgets/custom_elevated_button.dart';
import 'package:zubair_s_application1/widgets/custom_icon_button.dart';
import 'package:zubair_s_application1/widgets/custom_pin_code_text_field.dart';

class VefificationCodeScreen extends GetWidget<VefificationCodeController> {
  const VefificationCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildArrowLeftStack(),
                      Spacer(flex: 42),
                      Padding(
                          padding: EdgeInsets.only(left: 26.h),
                          child: Text("msg_vefification_code".tr,
                              style: theme.textTheme.displaySmall)),
                      SizedBox(height: 15.v),
                      Container(
                          width: 254.h,
                          margin: EdgeInsets.only(left: 26.h),
                          child: Text("msg_please_type_the".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(height: 1.38))),
                      SizedBox(height: 30.v),
                      Padding(
                          padding: EdgeInsets.only(left: 26.h, right: 28.h),
                          child: Obx(() => CustomPinCodeTextField(
                              context: Get.context!,
                              controller: controller.otpController.value,
                              onChanged: (value) {}))),
                      SizedBox(height: 30.v),
                      Align(
                          alignment: Alignment.center,
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_i_don_t_recevie2".tr,
                                    style: CustomTextStyles
                                        .titleMediumErrorContainer),
                                TextSpan(
                                    text: "lbl_please_resend".tr,
                                    style: CustomTextStyles.titleMediumPrimary)
                              ]),
                              textAlign: TextAlign.left)),
                      Spacer(flex: 57),
                      _buildVerificationCodeGrid()
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
                    imagePath: ImageConstant.imgEllipse1261,
                    height: 75.v,
                    width: 50.h,
                    alignment: Alignment.centerLeft),
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse1271,
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
              imagePath: ImageConstant.imgEllipse1281,
              height: 72.v,
              width: 77.h,
              margin: EdgeInsets.only(bottom: 3.v))
        ]));
  }

  /// Section Widget
  Widget _buildVerificationCodeGrid() {
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
              itemCount: controller.vefificationCodeModelObj.value
                  .vefificationcodeItemList.value.length,
              itemBuilder: (context, index) {
                VefificationcodeItemModel model = controller
                    .vefificationCodeModelObj
                    .value
                    .vefificationcodeItemList
                    .value[index];
                return VefificationcodeItemWidget(model);
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
