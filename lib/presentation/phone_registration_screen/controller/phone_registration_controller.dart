import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/presentation/phone_registration_screen/models/phone_registration_model.dart';

/// A controller class for the PhoneRegistrationScreen.
///
/// This class manages the state of the PhoneRegistrationScreen, including the
/// current phoneRegistrationModelObj
class PhoneRegistrationController extends GetxController {
  Rx<PhoneRegistrationModel> phoneRegistrationModelObj =
      PhoneRegistrationModel().obs;
}
