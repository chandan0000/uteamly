import '../controller/dasboard_controller.dart';
import '../models/dasboard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:uteamly/core/app_export.dart';

// ignore: must_be_immutable
class DasboardItemWidget extends StatelessWidget {
  DasboardItemWidget(this.dasboardItemModelObj);

  DasboardItemModel dasboardItemModelObj;

  var controller = Get.find<DasboardController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: getMargin(
          top: 5.0,
          bottom: 5.0,
        ),
        decoration: AppDecoration.outlineBlack9003f.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: getPadding(
                left: 18,
                top: 29,
                bottom: 44,
              ),
              child: CommonImageView(
                imagePath: ImageConstant.imgBellring1,
                height: getSize(
                  23.00,
                ),
                width: getSize(
                  23.00,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 16,
                top: 18,
                bottom: 21,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      216.00,
                    ),
                    child: Text(
                      "msg_network_lag_bug".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtNunitoMedium15,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        top: 4,
                        right: 1,
                      ),
                      child: Text(
                        "msg_you_can_check_t".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtNunitoRegular13,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 31,
                top: 31,
                right: 21,
                bottom: 45,
              ),
              child: CommonImageView(
                imagePath: ImageConstant.imgArrowdownsign,
                height: getVerticalSize(
                  20.00,
                ),
                width: getHorizontalSize(
                  9.00,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
