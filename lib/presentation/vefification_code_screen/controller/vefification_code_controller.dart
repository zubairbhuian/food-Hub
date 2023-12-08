import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/presentation/vefification_code_screen/models/vefification_code_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the VefificationCodeScreen.
///
/// This class manages the state of the VefificationCodeScreen, including the
/// current vefificationCodeModelObj
class VefificationCodeController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<VefificationCodeModel> vefificationCodeModelObj =
      VefificationCodeModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }
}
