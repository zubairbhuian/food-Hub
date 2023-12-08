import 'package:zubair_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';
import 'burgertext_item_model.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<BurgertextItemModel>> burgertextItemList = Rx([
    BurgertextItemModel(
        burgerImage: ImageConstant.imgMaskGroup49x49.obs,
        burgerText: "Burger".obs),
    BurgertextItemModel(burgerText: "Donat".obs),
    BurgertextItemModel(burgerText: "Pizza".obs),
    BurgertextItemModel(burgerText: "Mexican".obs),
    BurgertextItemModel(burgerText: "Asian".obs),
    BurgertextItemModel(burgerText: "Asian".obs)
  ]);
}
