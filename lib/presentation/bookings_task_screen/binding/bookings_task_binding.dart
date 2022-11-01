import '../controller/bookings_task_controller.dart';
import 'package:get/get.dart';

class BookingsTaskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookingsTaskController());
  }
}
