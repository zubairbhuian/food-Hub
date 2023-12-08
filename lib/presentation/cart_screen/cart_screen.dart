import 'controller/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:zubair_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:zubair_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:zubair_s_application1/widgets/custom_elevated_button.dart';
import 'package:zubair_s_application1/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class CartScreen extends GetWidget<CartController> {
  const CartScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 21.v,
          ),
          child: Column(
            children: [
              _buildMask(),
              SizedBox(height: 25.v),
              _buildGreekSalad(),
              SizedBox(height: 32.v),
              _buildApply(),
              SizedBox(height: 27.v),
              _buildSubtotal1(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildCheckout(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 64.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 26.h,
          top: 9.v,
          bottom: 9.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_cart".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildMask() {
    return Padding(
      padding: EdgeInsets.only(right: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 82.adaptSize,
            width: 82.adaptSize,
            margin: EdgeInsets.only(bottom: 1.v),
            decoration: AppDecoration.outlineLightGreenE,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage8281x82,
                  height: 81.v,
                  width: 82.h,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage8082x82,
                  height: 82.adaptSize,
                  width: 82.adaptSize,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 6.v),
            child: Column(
              children: [
                Container(
                  width: 222.h,
                  margin: EdgeInsets.only(right: 2.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_red_n_hot_pizza".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                          SizedBox(height: 7.v),
                          Text(
                            "msg_spicy_chicken_beef".tr,
                            style: CustomTextStyles.bodyMediumBluegray400,
                          ),
                        ],
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup17248,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          top: 2.v,
                          bottom: 20.v,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.v),
                SizedBox(
                  width: 225.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 2.v,
                          bottom: 9.v,
                        ),
                        child: Text(
                          "lbl_15_30".tr,
                          style: CustomTextStyles.titleMediumPrimary16,
                        ),
                      ),
                      Spacer(),
                      CustomIconButton(
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        padding: EdgeInsets.all(9.h),
                        decoration: IconButtonStyleHelper.outlinePrimaryTL15,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup17841,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 7.h,
                          top: 6.v,
                          bottom: 5.v,
                        ),
                        child: Text(
                          "lbl_02".tr,
                          style: CustomTextStyles.titleMedium16,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: CustomIconButton(
                          height: 28.adaptSize,
                          width: 28.adaptSize,
                          padding: EdgeInsets.all(9.h),
                          decoration: IconButtonStyleHelper.outlinePrimary,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgGroup17840,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGreekSalad() {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage85,
            height: 82.adaptSize,
            width: 82.adaptSize,
            radius: BorderRadius.circular(
              20.h,
            ),
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 9.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_greek_salad".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 6.v),
                      Text(
                        "msg_with_baked_salmon".tr,
                        style: CustomTextStyles.bodyMediumBluegray400,
                      ),
                      SizedBox(height: 13.v),
                      Text(
                        "lbl_12_00".tr,
                        style: CustomTextStyles.titleMediumPrimary16,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup17248,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 2.h),
                      ),
                      SizedBox(height: 31.v),
                      SizedBox(
                        width: 89.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomIconButton(
                              height: 28.adaptSize,
                              width: 28.adaptSize,
                              padding: EdgeInsets.all(9.h),
                              decoration:
                                  IconButtonStyleHelper.outlinePrimaryTL15,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgGroup17841,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 6.v,
                                bottom: 5.v,
                              ),
                              child: Text(
                                "lbl_02".tr,
                                style: CustomTextStyles.titleMedium16,
                              ),
                            ),
                            CustomIconButton(
                              height: 28.adaptSize,
                              width: 28.adaptSize,
                              padding: EdgeInsets.all(9.h),
                              decoration: IconButtonStyleHelper.outlinePrimary,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgGroup17840,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildApply() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineGray200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder28,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              top: 16.v,
              bottom: 14.v,
            ),
            child: Text(
              "lbl_promo_code".tr,
              style: CustomTextStyles.bodyMediumGray40001,
            ),
          ),
          CustomElevatedButton(
            height: 44.v,
            width: 96.h,
            text: "lbl_apply".tr,
            buttonStyle: CustomButtonStyles.fillPrimary,
            buttonTextStyle: CustomTextStyles.bodyLargeWhiteA70001,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSubtotal1() {
    return SizedBox(
      height: 161.v,
      width: 331.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              "lbl_total".tr,
              style: CustomTextStyles.bodyLargeBlack900,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildTaxAndFees(
                  taxAndFeesText: "lbl_subtotal".tr,
                  priceText: "lbl_27_30".tr,
                  currencyText: "lbl_usd".tr,
                ),
                SizedBox(height: 16.v),
                Divider(),
                SizedBox(height: 14.v),
                _buildTaxAndFees(
                  taxAndFeesText: "lbl_tax_and_fees".tr,
                  priceText: "lbl_5_30".tr,
                  currencyText: "lbl_usd".tr,
                ),
                SizedBox(height: 15.v),
                Divider(),
                SizedBox(height: 13.v),
                _buildTaxAndFees(
                  taxAndFeesText: "lbl_delivery".tr,
                  priceText: "lbl_1_00".tr,
                  currencyText: "lbl_usd".tr,
                ),
                SizedBox(height: 13.v),
                Divider(),
                SizedBox(height: 10.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 43.h,
                      right: 6.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 3.v),
                          child: Text(
                            "lbl_2_items".tr,
                            style: CustomTextStyles.bodyMediumGray40001,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "lbl_33_60".tr,
                          style: CustomTextStyles.titleMediumMedium17,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text(
                            "lbl_usd".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckout() {
    return CustomElevatedButton(
      height: 57.v,
      width: 248.h,
      text: "lbl_checkout".tr.toUpperCase(),
      margin: EdgeInsets.only(
        left: 64.h,
        right: 63.h,
        bottom: 31.v,
      ),
      buttonStyle: CustomButtonStyles.outlinePrimary,
    );
  }

  /// Common widget
  Widget _buildTaxAndFees({
    required String taxAndFeesText,
    required String priceText,
    required String currencyText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          taxAndFeesText,
          style: CustomTextStyles.bodyLargeBlack900.copyWith(
            color: appTheme.black900,
          ),
        ),
        Spacer(),
        Text(
          priceText,
          style: CustomTextStyles.titleMediumMedium.copyWith(
            color: appTheme.black900,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 3.h,
            top: 2.v,
            bottom: 2.v,
          ),
          child: Text(
            currencyText,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.gray500,
            ),
          ),
        ),
      ],
    );
  }
}
