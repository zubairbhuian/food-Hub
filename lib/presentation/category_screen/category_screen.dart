import '../category_screen/widgets/menucardsection_item_widget.dart';
import 'controller/category_controller.dart';
import 'models/menucardsection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/widgets/custom_icon_button.dart';

class CategoryScreen extends GetWidget<CategoryController> {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Padding(
                    padding: EdgeInsets.only(left: 26.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildPizzaTypeSection(),
                          SizedBox(height: 57.v),
                          _buildShortBySection(),
                          SizedBox(height: 24.v),
                          _buildMenuCardSection()
                        ])))));
  }

  /// Section Widget
  Widget _buildPizzaTypeSection() {
    return SizedBox(
        height: 248.v,
        width: 349.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Text("msg_80_type_of_pizza".tr,
                  style: CustomTextStyles.bodyLarge19)),
          Align(
              alignment: Alignment.centerLeft,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: CustomIconButton(
                            height: 38.adaptSize,
                            width: 38.adaptSize,
                            padding: EdgeInsets.all(14.h),
                            onTap: () {
                              onTapBtnArrowLeft();
                            },
                            child: CustomImageView(
                                imagePath: ImageConstant.imgArrowLeft))),
                    SizedBox(height: 30.v),
                    SizedBox(
                        width: 124.h,
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "lbl_fast".tr,
                                  style: CustomTextStyles
                                      .displayMediumPrimaryContainer),
                              TextSpan(
                                  text: "lbl_food2".tr,
                                  style: theme.textTheme.displayLarge)
                            ]),
                            textAlign: TextAlign.left))
                  ])),
          Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                  height: 244.v,
                  width: 221.h,
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgMaskGroup229x221,
                        height: 229.v,
                        width: 221.h,
                        alignment: Alignment.topCenter),
                    CustomImageView(
                        imagePath: ImageConstant.imgMaskGroup138x108,
                        height: 138.v,
                        width: 108.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 32.h))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildShortBySection() {
    return Padding(
        padding: EdgeInsets.only(right: 42.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text("lbl_short_by".tr,
                  style: CustomTextStyles.bodyMediumOnPrimary_1)),
          Padding(
              padding: EdgeInsets.only(left: 11.h, top: 2.v),
              child: Text("lbl_popular".tr,
                  style: CustomTextStyles.bodyMediumPrimary)),
          CustomImageView(
              imagePath: ImageConstant.imgVector11,
              height: 2.v,
              width: 4.h,
              margin: EdgeInsets.only(left: 5.h, top: 9.v, bottom: 7.v)),
          CustomImageView(
              imagePath: ImageConstant.imgGroup17859,
              height: 18.adaptSize,
              width: 18.adaptSize,
              margin: EdgeInsets.only(left: 157.h))
        ]));
  }

  /// Section Widget
  Widget _buildMenuCardSection() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 26.h),
            child: Obx(() => ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 20.v);
                },
                itemCount: controller.categoryModelObj.value
                    .menucardsectionItemList.value.length,
                itemBuilder: (context, index) {
                  MenucardsectionItemModel model = controller.categoryModelObj
                      .value.menucardsectionItemList.value[index];
                  return MenucardsectionItemWidget(model);
                }))));
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft() {
    Get.back();
  }
}
