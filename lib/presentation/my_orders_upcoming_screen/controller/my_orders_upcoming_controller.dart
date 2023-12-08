import 'package:zubair_s_application1/core/app_export.dart';
import 'package:zubair_s_application1/presentation/my_orders_upcoming_screen/models/my_orders_upcoming_model.dart';

/// A controller class for the MyOrdersUpcomingScreen.
///
/// This class manages the state of the MyOrdersUpcomingScreen, including the
/// current myOrdersUpcomingModelObj
class MyOrdersUpcomingController extends GetxController {
  Rx<MyOrdersUpcomingModel> myOrdersUpcomingModelObj =
      MyOrdersUpcomingModel().obs;
}
