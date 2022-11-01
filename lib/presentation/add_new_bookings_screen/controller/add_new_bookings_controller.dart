import '/core/app_export.dart';
import 'package:uteamly/presentation/add_new_bookings_screen/models/add_new_bookings_model.dart';
import 'package:uteamly/widgets/custom_bottom_bar.dart';
import 'package:uteamly/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class AddNewBookingsController extends GetxController {
  TextEditingController groupFortyTwoController = TextEditingController();

  TextEditingController groupThreeController = TextEditingController();

  TextEditingController groupOneController = TextEditingController();

  TextEditingController group3786Controller = TextEditingController();

  TextEditingController group3787Controller = TextEditingController();

  TextEditingController group3788Controller = TextEditingController();

  TextEditingController group3789Controller = TextEditingController();

  Rx<AddNewBookingsModel> addNewBookingsModelObj = AddNewBookingsModel().obs;

  Rx<BottomBarEnum> type = BottomBarEnum.Dashboard.obs;

  Rx<BottomBarEnum> type1 = BottomBarEnum.Dashboard.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupFortyTwoController.dispose();
    groupThreeController.dispose();
    groupOneController.dispose();
    group3786Controller.dispose();
    group3787Controller.dispose();
    group3788Controller.dispose();
    group3789Controller.dispose();
  }
}
