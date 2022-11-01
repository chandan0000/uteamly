import '../controller/employee_controller.dart';
import '../models/employee_item_model.dart';
import 'package:flutter/material.dart';
import 'package:uteamly/core/app_export.dart';
import 'package:uteamly/widgets/custom_checkbox.dart';

// ignore: must_be_immutable
class EmployeeItemWidget extends StatelessWidget {
  EmployeeItemWidget(this.employeeItemModelObj);

  EmployeeItemModel employeeItemModelObj;

  var controller = Get.find<EmployeeController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: getMargin(
          top: 8.5,
          bottom: 8.5,
        ),
        decoration: AppDecoration.outlineBlack9003f.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Obx(
              () => CustomCheckbox(
                text: "lbl_19281".tr,
                iconSize: 22,
                value: controller.checkbox.value,
                padding: getPadding(
                  left: 12,
                  top: 21,
                  bottom: 18,
                ),
                onChange: (value) {
                  controller.checkbox.value = value;
                },
              ),
            ),
            Padding(
              padding: getPadding(
                left: 35,
                top: 23,
                bottom: 23,
              ),
              child: Text(
                "lbl_jack_hood".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtNunitoRegular13,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 42,
                top: 23,
                bottom: 20,
              ),
              child: Text(
                "lbl_manager".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtNunitoRegular13,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 30,
                top: 23,
                bottom: 23,
              ),
              child: Text(
                "lbl_0900_87621231".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtNunitoRegular13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
