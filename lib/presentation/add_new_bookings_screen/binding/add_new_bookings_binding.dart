import '../controller/add_new_bookings_controller.dart';
import 'package:get/get.dart';

class AddNewBookingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewBookingsController());
  }
}
