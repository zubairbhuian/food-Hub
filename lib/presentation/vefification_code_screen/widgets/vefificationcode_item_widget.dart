import '../controller/vefification_code_controller.dart';
import '../models/vefificationcode_item_model.dart';
import 'package:flutter/material.dart';
import 'package:zubair_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class VefificationcodeItemWidget extends StatelessWidget {
  VefificationcodeItemWidget(
    this.vefificationcodeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  VefificationcodeItemModel vefificationcodeItemModelObj;

  var controller = Get.find<VefificationCodeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 117.h,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.outlineBluegray40001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Obx(
        () => Text(
          vefificationcodeItemModelObj.one!.value,
          style: theme.textTheme.headlineSmall,
        ),
      ),
    );
  }
}
