import '../../../core/app_export.dart';
import 'vefificationcode_item_model.dart';

/// This class defines the variables used in the [vefification_code_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class VefificationCodeModel {
  Rx<List<VefificationcodeItemModel>> vefificationcodeItemList =
      Rx([VefificationcodeItemModel(one: "1".obs)]);
}
