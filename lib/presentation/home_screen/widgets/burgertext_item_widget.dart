import '../controller/home_controller.dart';
import '../models/burgertext_item_model.dart';
import 'package:flutter/material.dart';
import 'package:zubair_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class BurgertextItemWidget extends StatelessWidget {
  BurgertextItemWidget(
    this.burgertextItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BurgertextItemModel burgertextItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 58.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.all(4.h),
          decoration: AppDecoration.outlinePrimary1.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder28,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: burgertextItemModelObj.burgerImage!.value,
                  height: 49.adaptSize,
                  width: 49.adaptSize,
                ),
              ),
              SizedBox(height: 11.v),
              Obx(
                () => Text(
                  burgertextItemModelObj.burgerText!.value,
                  style: CustomTextStyles.labelMediumSofiaProWhiteA70001,
                ),
              ),
              SizedBox(height: 16.v),
            ],
          ),
        ),
      ),
    );
  }
}
