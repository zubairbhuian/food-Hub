import '../../../core/app_export.dart';

/// This class is used in the [menulist_item_widget] screen.
class MenulistItemModel {
  MenulistItemModel({
    this.image1,
    this.text2,
    this.text3,
    this.text4,
    this.text5,
    this.id,
  }) {
    image1 = image1 ?? Rx(ImageConstant.imgImage80165x323);
    text2 = text2 ?? Rx("4.5");
    text3 = text3 ?? Rx("(25+)");
    text4 = text4 ?? Rx("Chicken Hawaiian");
    text5 = text5 ?? Rx("Chicken, Cheese and pineapple");
    id = id ?? Rx("");
  }

  Rx<String>? image1;

  Rx<String>? text2;

  Rx<String>? text3;

  Rx<String>? text4;

  Rx<String>? text5;

  Rx<String>? id;
}
