import '../controller/add_new_bookings_controller.dart';
import '../models/listpopbugfix_three1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:uteamly/core/app_export.dart';

// ignore: must_be_immutable
class ListpopbugfixThree1ItemWidget extends StatelessWidget {
  ListpopbugfixThree1ItemWidget(this.listpopbugfixThree1ItemModelObj);

  ListpopbugfixThree1ItemModel listpopbugfixThree1ItemModelObj;

  var controller = Get.find<AddNewBookingsController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.topLeft,
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
      ),
    );
  }
}
