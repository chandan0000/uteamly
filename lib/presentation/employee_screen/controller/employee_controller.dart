import '/core/app_export.dart';
import 'package:uteamly/presentation/employee_screen/models/employee_model.dart';
import 'package:uteamly/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class EmployeeController extends GetxController {
  TextEditingController groupThirtyThreeController = TextEditingController();

  Rx<EmployeeModel> employeeModelObj = EmployeeModel().obs;

  RxBool checkbox = false.obs;

  RxBool checkbox1 = false.obs;

  Rx<BottomBarEnum> type = BottomBarEnum.Dashboard.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupThirtyThreeController.dispose();
  }
}
