import '../../../core/app_export.dart';

/// This class is used in the [menucardsection_item_widget] screen.
class MenucardsectionItemModel {
  MenucardsectionItemModel({
    this.image,
    this.rating,
    this.reviews,
    this.title,
    this.description,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgImage80);
    rating = rating ?? Rx("4.5");
    reviews = reviews ?? Rx("(25+)");
    title = title ?? Rx("Chicken Hawaiian");
    description = description ?? Rx("Chicken, Cheese and pineapple");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? rating;

  Rx<String>? reviews;

  Rx<String>? title;

  Rx<String>? description;

  Rx<String>? id;
}
