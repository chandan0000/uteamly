import '/core/app_export.dart';
import 'package:uteamly/presentation/bookings_task_screen/models/bookings_task_model.dart';
import 'package:uteamly/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class BookingsTaskController extends GetxController {
  TextEditingController groupFortyFiveController = TextEditingController();

  Rx<BookingsTaskModel> bookingsTaskModelObj = BookingsTaskModel().obs;

  Rx<BottomBarEnum> type = BottomBarEnum.Dashboard.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupFortyFiveController.dispose();
  }
}
