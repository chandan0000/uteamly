import '../controller/dasboard_container_controller.dart';
import 'package:get/get.dart';

class DasboardContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DasboardContainerController());
  }
}
