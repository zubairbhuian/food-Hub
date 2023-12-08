import '../home_screen/widgets/burgertext_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/burgertext_item_model.dart';
import 'package:flutter/material.dart';
import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:zubair_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:zubair_s_application1/widgets/app_bar/appbar_title_dropdown.dart';
import 'package:zubair_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:zubair_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:zubair_s_application1/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 20.v),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 272.h,
                    margin: EdgeInsets.only(
                      left: 24.h,
                      right: 78.h,
                    ),
                    child: Text(
                      "msg_what_would_you_like_to".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.headlineLargeBluegray900,
                    ),
                  ),
                ),
                SizedBox(height: 19.v),
                _buildSearch(),
                SizedBox(height: 30.v),
                _buildBurgerText(),
                SizedBox(height: 28.v),
                _buildFeaturedRestaurants(),
                SizedBox(height: 16.v),
                _buildFortyFive(),
                SizedBox(height: 24.v),
                _buildNinetyFour(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 64.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgGroup17484,
        margin: EdgeInsets.only(
          left: 26.h,
          top: 10.v,
          bottom: 7.v,
        ),
      ),
      centerTitle: true,
      title: Column(
        children: [
          Obx(
            () => AppbarTitleDropdown(
              margin: EdgeInsets.only(
                left: 39.h,
                right: 41.h,
              ),
              hintText: "lbl_deliver_to".tr,
              items: controller.homeModelObj.value.dropdownItemList!.value,
              onTap: (value) {
                controller.onSelected(value);
              },
            ),
          ),
          SizedBox(height: 7.v),
          AppbarSubtitle(
            text: "msg_4102_pretty_view".tr,
          ),
        ],
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMaskGroup,
          margin: EdgeInsets.fromLTRB(27.h, 10.v, 27.h, 7.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSearch() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(17.h),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: 13.adaptSize,
                    width: 13.adaptSize,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLine7,
                          height: 3.adaptSize,
                          width: 3.adaptSize,
                          alignment: Alignment.bottomRight,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse42,
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                          alignment: Alignment.topLeft,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text(
                      "msg_find_for_food_or".tr,
                      style: CustomTextStyles.bodyMediumSecondaryContainer,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.h),
            child: CustomIconButton(
              height: 51.adaptSize,
              width: 51.adaptSize,
              padding: EdgeInsets.all(16.h),
              decoration: IconButtonStyleHelper.outlineBlueGrayF,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup18097,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBurgerText() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 98.v,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.only(left: 25.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 14.h,
              );
            },
            itemCount:
                controller.homeModelObj.value.burgertextItemList.value.length,
            itemBuilder: (context, index) {
              BurgertextItemModel model =
                  controller.homeModelObj.value.burgertextItemList.value[index];
              return BurgertextItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFeaturedRestaurants() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "msg_featured_restaurants".tr,
            style: CustomTextStyles.titleMediumBluegray90001,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "lbl_view_all".tr,
              style: CustomTextStyles.bodyMediumDeeporangeA200,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 6.v,
            width: 3.h,
            margin: EdgeInsets.only(
              left: 5.h,
              top: 7.v,
              bottom: 3.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyFive() {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 25.h),
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  decoration: AppDecoration.outlineBluegray1001.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildEleven(
                        userImage: ImageConstant.imgMaskGroup136x266,
                        label47: "lbl_4_5".tr,
                        label99: "lbl_25".tr,
                      ),
                      SizedBox(height: 10.v),
                      Padding(
                        padding: EdgeInsets.only(left: 13.h),
                        child: _buildStarbuck(
                          dynamicText: "lbl_mcdonald_s".tr,
                        ),
                      ),
                      SizedBox(height: 7.v),
                      Padding(
                        padding: EdgeInsets.only(left: 13.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgGroup17504,
                              height: 11.v,
                              width: 13.h,
                              margin: EdgeInsets.only(
                                top: 1.v,
                                bottom: 3.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 6.h,
                                top: 1.v,
                              ),
                              child: Text(
                                "lbl_free_delivery".tr,
                                style: CustomTextStyles
                                    .bodySmallHelveticaNeueBluegray40004,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgGroup17503,
                              height: 12.v,
                              width: 10.h,
                              margin: EdgeInsets.only(
                                left: 17.h,
                                top: 1.v,
                                bottom: 2.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 4.h,
                                bottom: 1.v,
                              ),
                              child: Text(
                                "lbl_10_15_mins".tr,
                                style: CustomTextStyles
                                    .bodySmallHelveticaNeueBluegray40004,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.only(left: 13.h),
                        child: _buildBurger(
                          burgerText: "lbl_burger".tr,
                          chickenText: "lbl_chicken".tr,
                          fastFoodText: "lbl_fast_food".tr,
                        ),
                      ),
                      SizedBox(height: 14.v),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 15.h),
                  decoration: AppDecoration.outlineBluegray1001.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildEleven(
                        userImage: ImageConstant.imgMaskGroup1,
                        label47: "lbl_4_7".tr,
                        label99: "lbl_99".tr,
                      ),
                      SizedBox(height: 10.v),
                      Padding(
                        padding: EdgeInsets.only(left: 13.h),
                        child: _buildStarbuck(
                          dynamicText: "lbl_starbuck".tr,
                        ),
                      ),
                      SizedBox(height: 6.v),
                      Padding(
                        padding: EdgeInsets.only(left: 13.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgGroup17504,
                              height: 11.v,
                              width: 13.h,
                              margin: EdgeInsets.symmetric(vertical: 2.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "lbl_free_delivery".tr,
                                style: CustomTextStyles
                                    .bodySmallHelveticaNeueBluegray40004,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgGroup17503,
                              height: 12.v,
                              width: 10.h,
                              margin: EdgeInsets.only(
                                left: 19.h,
                                top: 2.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text(
                                "lbl_10_15_mins".tr,
                                style: CustomTextStyles
                                    .bodyMediumHelveticaNeueBluegray40004,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 9.v),
                      Padding(
                        padding: EdgeInsets.only(left: 13.h),
                        child: _buildBurger(
                          burgerText: "lbl_burger".tr,
                          chickenText: "lbl_chicken".tr,
                          fastFoodText: "lbl_fast_food".tr,
                        ),
                      ),
                      SizedBox(height: 14.v),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyFour() {
    return SizedBox(
      height: 248.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_popular_items".tr,
                    style: CustomTextStyles.titleMediumBluegray90001,
                  ),
                  SizedBox(height: 14.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 7.h),
                        child: _buildUxRhrUfPHQ(
                          userImage: ImageConstant.imgImage10,
                          price: "lbl_5_50".tr,
                          fortyFive: "lbl_4_5".tr,
                          twentyFive: "lbl_25".tr,
                          salmonSalad: "lbl_salmon_salad".tr,
                          bakedSalmonFish: "msg_baked_salmon_fish".tr,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: _buildUxRhrUfPHQ(
                          userImage: ImageConstant.imgUxrhru8fphq,
                          price: "lbl_8_25".tr,
                          fortyFive: "lbl_4_5".tr,
                          twentyFive: "lbl_25".tr,
                          salmonSalad: "lbl_salmon_salad".tr,
                          bakedSalmonFish: "msg_baked_salmon_fish".tr,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(
                top: 58.v,
                bottom: 116.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 12.v,
              ),
              decoration: AppDecoration.outlineBlueGrayE,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup17444,
                    height: 27.v,
                    width: 28.h,
                    margin: EdgeInsets.only(
                      left: 6.h,
                      top: 12.v,
                      bottom: 9.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup17440,
                    height: 28.v,
                    width: 26.h,
                    margin: EdgeInsets.only(
                      top: 12.v,
                      bottom: 9.v,
                    ),
                  ),
                  Container(
                    height: 34.v,
                    width: 32.h,
                    margin: EdgeInsets.only(
                      top: 3.v,
                      bottom: 12.v,
                    ),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup17445,
                          height: 24.v,
                          width: 22.h,
                          alignment: Alignment.bottomLeft,
                        ),
                        _buildSeventySix(
                          userImage: ImageConstant.imgGroupAmber400,
                          six: "lbl_4".tr,
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup18073,
                    height: 26.adaptSize,
                    width: 26.adaptSize,
                    margin: EdgeInsets.only(
                      top: 15.v,
                      bottom: 9.v,
                    ),
                  ),
                  Container(
                    height: 39.v,
                    width: 34.h,
                    margin: EdgeInsets.only(bottom: 9.v),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup17443,
                          height: 28.adaptSize,
                          width: 28.adaptSize,
                          alignment: Alignment.bottomLeft,
                        ),
                        _buildSeventySix(
                          userImage: ImageConstant.imgPath23,
                          six: "lbl_6".tr,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildEleven({
    required String userImage,
    required String label47,
    required String label99,
  }) {
    return SizedBox(
      height: 136.v,
      width: 266.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 136.v,
            width: 266.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 245.h,
              margin: EdgeInsets.fromLTRB(10.h, 10.v, 10.h, 97.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 69.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 7.v,
                    ),
                    decoration: AppDecoration.outlinePrimary2.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text(
                            label47,
                            style: CustomTextStyles.labelMediumSofiaProSemiBold
                                .copyWith(
                              color: appTheme.black900,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgPath3389,
                          height: 9.adaptSize,
                          width: 9.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 2.v),
                          child: Text(
                            label99,
                            style: CustomTextStyles.bodySmall8_1.copyWith(
                              color: appTheme.gray500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomIconButton(
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    padding: EdgeInsets.all(6.h),
                    decoration: IconButtonStyleHelper.outlinePrimary,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup17481,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildStarbuck({required String dynamicText}) {
    return Row(
      children: [
        Text(
          dynamicText,
          style: CustomTextStyles.titleSmallBlack900_1.copyWith(
            color: appTheme.black900,
          ),
        ),
        Container(
          height: 10.adaptSize,
          width: 10.adaptSize,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 2.v,
            bottom: 2.v,
          ),
          padding: EdgeInsets.all(3.h),
          decoration: AppDecoration.fillTeal.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgVector3,
            height: 2.v,
            width: 3.h,
            alignment: Alignment.topCenter,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildBurger({
    required String burgerText,
    required String chickenText,
    required String fastFoodText,
  }) {
    return Row(
      children: [
        Container(
          width: 54.h,
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 4.v,
          ),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Text(
            burgerText,
            style: CustomTextStyles.bodySmallBluegray40002.copyWith(
              color: appTheme.blueGray40002,
            ),
          ),
        ),
        Container(
          width: 60.h,
          margin: EdgeInsets.only(left: 8.h),
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 4.v,
          ),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Text(
            chickenText,
            style: CustomTextStyles.bodySmallBluegray40002.copyWith(
              color: appTheme.blueGray40002,
            ),
          ),
        ),
        Container(
          width: 70.h,
          margin: EdgeInsets.only(left: 8.h),
          padding: EdgeInsets.symmetric(
            horizontal: 5.h,
            vertical: 4.v,
          ),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Text(
            fastFoodText,
            style: CustomTextStyles.bodySmallBluegray40002.copyWith(
              color: appTheme.blueGray40002,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildUxRhrUfPHQ({
    required String userImage,
    required String price,
    required String fortyFive,
    required String twentyFive,
    required String salmonSalad,
    required String bakedSalmonFish,
  }) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          decoration: AppDecoration.fillWhiteA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 158.v,
                width: 154.h,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        height: 147.v,
                        width: 154.h,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            CustomImageView(
                              imagePath: userImage,
                              height: 147.v,
                              width: 154.h,
                              radius: BorderRadius.circular(
                                15.h,
                              ),
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                width: 134.h,
                                margin: EdgeInsets.fromLTRB(
                                    10.h, 10.v, 10.h, 109.v),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      height: 28.v,
                                      width: 58.h,
                                      child: Stack(
                                        alignment: Alignment.centerLeft,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle99,
                                            height: 28.v,
                                            width: 58.h,
                                            radius: BorderRadius.circular(
                                              14.h,
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 7.h),
                                              child: RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: "lbl".tr,
                                                      style: CustomTextStyles
                                                          .bodySmallTTCommonsPrimary9,
                                                    ),
                                                    TextSpan(
                                                      text: "lbl_8_252".tr,
                                                      style: CustomTextStyles
                                                          .titleLargeTTCommonsOnPrimary,
                                                    ),
                                                  ],
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    CustomIconButton(
                                      height: 28.adaptSize,
                                      width: 28.adaptSize,
                                      padding: EdgeInsets.all(6.h),
                                      decoration:
                                          IconButtonStyleHelper.outlinePrimary,
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgGroup17481,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 10.h,
                          top: 134.v,
                          right: 84.h,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.h,
                          vertical: 7.v,
                        ),
                        decoration: AppDecoration.outlinePrimary3.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              fortyFive,
                              style:
                                  CustomTextStyles.labelMediumSofiaPro.copyWith(
                                color: appTheme.black900,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgPath3389,
                              height: 8.adaptSize,
                              width: 8.adaptSize,
                              margin: EdgeInsets.only(
                                left: 3.h,
                                top: 1.v,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 2.h,
                                top: 1.v,
                              ),
                              child: Text(
                                twentyFive,
                                style:
                                    CustomTextStyles.sofiaProGray500.copyWith(
                                  color: appTheme.gray500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6.v),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Text(
                  salmonSalad,
                  style: CustomTextStyles.titleSmallBlack900.copyWith(
                    color: appTheme.black900,
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Text(
                  bakedSalmonFish,
                  style: CustomTextStyles.bodySmallLight.copyWith(
                    color: appTheme.gray500,
                  ),
                ),
              ),
              SizedBox(height: 16.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildSeventySix({
    required String userImage,
    required String six,
  }) {
    return SizedBox(
      height: 14.adaptSize,
      width: 14.adaptSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 14.adaptSize,
            width: 14.adaptSize,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              six,
              style: CustomTextStyles.bodySmallWhiteA70001.copyWith(
                color: appTheme.whiteA70001,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
