import '../favorites_food_items_screen/widgets/menulist_item_widget.dart';
import 'controller/favorites_food_items_controller.dart';
import 'models/menulist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:zubair_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:zubair_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:zubair_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:zubair_s_application1/widgets/custom_elevated_button.dart';

class FavoritesFoodItemsScreen extends GetWidget<FavoritesFoodItemsController> {
  const FavoritesFoodItemsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 26.h),
                child: Column(children: [
                  SizedBox(height: 23.v),
                  _buildFoodItemsRow(),
                  SizedBox(height: 32.v),
                  _buildMenuList()
                ]))));
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
        title: AppbarTitle(text: "lbl_favorites".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMaskGroup,
              margin: EdgeInsets.symmetric(horizontal: 27.h, vertical: 9.v))
        ]);
  }

  /// Section Widget
  Widget _buildFoodItemsRow() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 3.v),
        decoration: AppDecoration.outlineGray20001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder28),
        child: Row(children: [
          CustomElevatedButton(
              height: 47.v,
              width: 159.h,
              text: "lbl_food_items".tr,
              buttonStyle: CustomButtonStyles.outlineBlueGrayTL23,
              buttonTextStyle: CustomTextStyles.titleSmallMedium),
          Padding(
              padding: EdgeInsets.only(left: 40.h, top: 16.v, bottom: 16.v),
              child: Text("lbl_resturents".tr,
                  style: CustomTextStyles.bodyMediumPrimary))
        ]));
  }

  /// Section Widget
  Widget _buildMenuList() {
    return Expanded(
        child: Obx(() => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 20.v);
            },
            itemCount: controller
                .favoritesFoodItemsModelObj.value.menulistItemList.value.length,
            itemBuilder: (context, index) {
              MenulistItemModel model = controller.favoritesFoodItemsModelObj
                  .value.menulistItemList.value[index];
              return MenulistItemWidget(model);
            })));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
