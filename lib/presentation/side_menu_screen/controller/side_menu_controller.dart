import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/presentation/side_menu_screen/models/side_menu_model.dart';

/// A controller class for the SideMenuScreen.
///
/// This class manages the state of the SideMenuScreen, including the
/// current sideMenuModelObj
class SideMenuController extends GetxController {
  Rx<SideMenuModel> sideMenuModelObj = SideMenuModel().obs;

  Rx<String> radioGroup = "".obs;
}
