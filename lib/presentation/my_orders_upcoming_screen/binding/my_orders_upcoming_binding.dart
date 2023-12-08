import '../controller/my_orders_upcoming_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyOrdersUpcomingScreen.
///
/// This class ensures that the MyOrdersUpcomingController is created when the
/// MyOrdersUpcomingScreen is first loaded.
class MyOrdersUpcomingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyOrdersUpcomingController());
  }
}
