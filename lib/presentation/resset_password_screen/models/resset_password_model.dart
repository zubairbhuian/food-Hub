import '../../../core/app_export.dart';
import 'ressetpassword_item_model.dart';

/// This class defines the variables used in the [resset_password_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RessetPasswordModel {
  Rx<List<RessetpasswordItemModel>> ressetpasswordItemList =
      Rx([RessetpasswordItemModel(one: "1".obs)]);
}
