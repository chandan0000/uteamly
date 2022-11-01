import '../controller/employee_profile_controller.dart';
import '../models/listpopbugfix_three2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:uteamly/core/app_export.dart';

// ignore: must_be_immutable
class ListpopbugfixThree2ItemWidget extends StatelessWidget {
  // ListpopbugfixThree2ItemWidget(this.listpopbugfixThree2ItemModelObj);

  // ListpopbugfixThree2ItemModel listpopbugfixThree2ItemModelObj;

  // var controller = Get.find<EmployeeProfileController>();

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
