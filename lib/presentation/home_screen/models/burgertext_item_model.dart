import '../../../core/app_export.dart';

/// This class is used in the [burgertext_item_widget] screen.
class BurgertextItemModel {
  BurgertextItemModel({
    this.burgerImage,
    this.burgerText,
    this.id,
  }) {
    burgerImage = burgerImage ?? Rx(ImageConstant.imgMaskGroup49x49);
    burgerText = burgerText ?? Rx("Burger");
    id = id ?? Rx("");
  }

  Rx<String>? burgerImage;

  Rx<String>? burgerText;

  Rx<String>? id;
}
