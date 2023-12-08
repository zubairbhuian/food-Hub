import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:zubair_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 93.adaptSize,
                width: 93.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 18.h,
                  vertical: 17.v,
                ),
                decoration: AppDecoration.outlineDeepOrangeF.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder24,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup18084,
                  height: 57.v,
                  width: 55.h,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 15.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "lbl_food".tr,
                    style: CustomTextStyles
                        .displayMediumPhosphateWhiteA70001Regular,
                  ),
                  Opacity(
                    opacity: 0.6,
                    child: Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Text(
                        "lbl_hub".tr,
                        style:
                            CustomTextStyles.displayMediumPhosphateWhiteA70001,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 3.v),
            ],
          ),
        ),
      ),
    );
  }
}
