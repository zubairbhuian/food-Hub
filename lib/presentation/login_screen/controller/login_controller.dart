import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LoginScreen.
///
/// This class manages the state of the LoginScreen, including the
/// current loginModelObj
class LoginController extends GetxController {
  TextEditingController emailColumnController = TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

  TextEditingController googleValueEditTextController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    emailColumnController.dispose();
    passwordEditTextController.dispose();
    googleValueEditTextController.dispose();
  }
}
