import '../../../core/app_export.dart';

/// This class is used in the [vefificationcode_item_widget] screen.
class VefificationcodeItemModel {
  VefificationcodeItemModel({
    this.one,
    this.id,
  }) {
    one = one ?? Rx("1");
    id = id ?? Rx("");
  }

  Rx<String>? one;

  Rx<String>? id;
}
