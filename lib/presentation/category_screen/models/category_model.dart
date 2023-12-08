import '../../../core/app_export.dart';
import 'menucardsection_item_model.dart';

/// This class defines the variables used in the [category_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoryModel {
  Rx<List<MenucardsectionItemModel>> menucardsectionItemList = Rx([
    MenucardsectionItemModel(
        image: ImageConstant.imgImage80.obs,
        rating: "4.5".obs,
        reviews: "(25+)".obs,
        title: "Chicken Hawaiian".obs,
        description: "Chicken, Cheese and pineapple".obs),
    MenucardsectionItemModel(
        image: ImageConstant.imgImage82.obs,
        rating: "4.5".obs,
        reviews: "(25+)".obs,
        title: "Chicken Hawaiian".obs,
        description: "Chicken, Cheese and pineapple".obs),
    MenucardsectionItemModel(
        image: ImageConstant.imgImage80.obs,
        rating: "4.5".obs,
        reviews: "(25+)".obs,
        title: "Chicken Hawaiian".obs,
        description: "Chicken, Cheese and pineapple".obs)
  ]);
}
