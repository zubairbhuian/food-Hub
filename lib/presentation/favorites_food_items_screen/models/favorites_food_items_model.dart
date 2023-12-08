import '../../../core/app_export.dart';
import 'menulist_item_model.dart';

/// This class defines the variables used in the [favorites_food_items_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FavoritesFoodItemsModel {
  Rx<List<MenulistItemModel>> menulistItemList = Rx([
    MenulistItemModel(
        image1: ImageConstant.imgImage80165x323.obs,
        text2: "4.5".obs,
        text3: "(25+)".obs,
        text4: "Chicken Hawaiian".obs,
        text5: "Chicken, Cheese and pineapple".obs),
    MenulistItemModel(
        image1: ImageConstant.imgImage82165x323.obs,
        text4: "Red N Hot Pizza".obs,
        text5: "Chicken, Chili".obs),
    MenulistItemModel(
        image1: ImageConstant.imgImage4.obs,
        text4: "Chicken Hawaiian".obs,
        text5: "Chicken, Cheese and pineapple".obs)
  ]);
}
