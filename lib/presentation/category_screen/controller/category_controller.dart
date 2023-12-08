import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/presentation/category_screen/models/category_model.dart';

/// A controller class for the CategoryScreen.
///
/// This class manages the state of the CategoryScreen, including the
/// current categoryModelObj
class CategoryController extends GetxController {
  Rx<CategoryModel> categoryModelObj = CategoryModel().obs;
}
