import '../controller/add_new_bookings_controller.dart';
import '../models/add_new_bookings_screen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:uteamly/core/app_export.dart';

// ignore: must_be_immutable
class AddNewBookingsScreenItemWidget extends StatelessWidget {
  AddNewBookingsScreenItemWidget(this.addNewBookingsScreenItemModelObj);

  AddNewBookingsScreenItemModel addNewBookingsScreenItemModelObj;

  var controller = Get.find<AddNewBookingsController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          left: 12,
          top: 24,
          right: 30,
          bottom: 19,
        ),
        child: Text(
          "lbl_pop_bug_fix".tr,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtNunitoRegular13,
        ),
      ),
    );
  }
}
