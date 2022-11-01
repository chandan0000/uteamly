import '../controller/document_controller.dart';
import '../models/document_item_model.dart';
import 'package:flutter/material.dart';
import 'package:uteamly/core/app_export.dart';
import 'package:uteamly/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class DocumentItemWidget extends StatelessWidget {
  DocumentItemWidget(this.documentItemModelObj);

  DocumentItemModel documentItemModelObj;

  var controller = Get.find<DocumentController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 8.5,
        bottom: 8.5,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: AppDecoration.outlineBlack9003f.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: getSize(
                    22.00,
                  ),
                  width: getSize(
                    22.00,
                  ),
                  margin: getMargin(
                    left: 12,
                    top: 21,
                    bottom: 18,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        3.00,
                      ),
                    ),
                    border: Border.all(
                      color: ColorConstant.bluegray100,
                      width: getHorizontalSize(
                        1.00,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 20,
                    top: 16,
                    bottom: 14,
                  ),
                  child: CommonImageView(
                    imagePath: ImageConstant.imgDocument1,
                    height: getSize(
                      31.00,
                    ),
                    width: getSize(
                      31.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 23,
                    bottom: 20,
                  ),
                  child: Text(
                    "lbl_sc_19826_recipt".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtNunitoRegular13,
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 30,
                    top: 22,
                    bottom: 19,
                  ),
                  padding: getPadding(
                    left: 9,
                    top: 3,
                    right: 9,
                    bottom: 3,
                  ),
                  decoration: AppDecoration.txtFillGray300.copyWith(
                    borderRadius: BorderRadiusStyle.txtRoundedBorder2,
                  ),
                  child: Text(
                    "lbl_pdf".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtNunitoSemiBold11,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 35,
                    top: 23,
                    right: 25,
                    bottom: 23,
                  ),
                  child: Text(
                    "lbl_9mb".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtNunitoRegular13,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
