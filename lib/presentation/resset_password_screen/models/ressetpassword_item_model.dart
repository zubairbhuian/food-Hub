import '../../../core/app_export.dart';

/// This class is used in the [ressetpassword_item_widget] screen.
class RessetpasswordItemModel {
  RessetpasswordItemModel({
    this.one,
    this.id,
  }) {
    one = one ?? Rx("1");
    id = id ?? Rx("");
  }

  Rx<String>? one;

  Rx<String>? id;
}
