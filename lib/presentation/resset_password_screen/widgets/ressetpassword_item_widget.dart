import '../controller/resset_password_controller.dart';
import '../models/ressetpassword_item_model.dart';
import 'package:flutter/material.dart';
import 'package:zubair_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class RessetpasswordItemWidget extends StatelessWidget {
  RessetpasswordItemWidget(
    this.ressetpasswordItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RessetpasswordItemModel ressetpasswordItemModelObj;

  var controller = Get.find<RessetPasswordController>();

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
          ressetpasswordItemModelObj.one!.value,
          style: theme.textTheme.headlineSmall,
        ),
      ),
    );
  }
}
