import '/core/app_export.dart';
import 'package:uteamly/presentation/dasboard_container_screen/models/dasboard_container_model.dart';
import 'package:uteamly/widgets/custom_bottom_bar.dart';

class DasboardContainerController extends GetxController {
  Rx<DasboardContainerModel> dasboardContainerModelObj =
      DasboardContainerModel().obs;

  Rx<BottomBarEnum> type = BottomBarEnum.Dashboard.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {}
}
