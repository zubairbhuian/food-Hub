import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/presentation/add_new_address_screen/models/add_new_address_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddNewAddressScreen.
///
/// This class manages the state of the AddNewAddressScreen, including the
/// current addNewAddressModelObj
class AddNewAddressController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController mobileNumberController = TextEditingController();

  TextEditingController streetValueController = TextEditingController();

  Rx<AddNewAddressModel> addNewAddressModelObj = AddNewAddressModel().obs;

  @override
  void onClose() {
    super.onClose();
    fullNameController.dispose();
    mobileNumberController.dispose();
    streetValueController.dispose();
  }
}
