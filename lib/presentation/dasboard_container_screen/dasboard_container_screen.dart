import 'controller/dasboard_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:uteamly/core/app_export.dart';
import 'package:uteamly/widgets/custom_bottom_bar.dart';

class DasboardContainerScreen extends GetWidget<DasboardContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Obx(() => getCurrentWidget(controller.type.value)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              controller.type.value = type;
            })));
  }

  Widget getCurrentWidget(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Dashboard:
        return getDefaultWidget();
      case BottomBarEnum.Activities:
        return getDefaultWidget();
      case BottomBarEnum.Tutorials:
        return getDefaultWidget();
      case BottomBarEnum.Employee:
        return getDefaultWidget();
      case BottomBarEnum.Helpcenter:
        return getDefaultWidget();
      case BottomBarEnum.Document:
        return getDefaultWidget();
      case BottomBarEnum.Message:
        return getDefaultWidget();
      case BottomBarEnum.Tasks:
        return getDefaultWidget();
      default:
        return getDefaultWidget();
    }
  }
}
