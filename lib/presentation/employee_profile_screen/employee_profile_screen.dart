import '../employee_profile_screen/widgets/listpopbugfix2_item_widget.dart';
import '../employee_profile_screen/widgets/listpopbugfix_three2_item_widget.dart';
import 'controller/employee_profile_controller.dart';
import 'models/listpopbugfix2_item_model.dart';
import 'models/listpopbugfix_three2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:uteamly/core/app_export.dart';
import 'package:uteamly/widgets/custom_icon_button.dart';

class EmployeeProfileScreen extends GetWidget<EmployeeProfileController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: size.width,
              margin: getMargin(
                top: 33,
              ),
              child: Padding(
                padding: getPadding(
                  left: 24,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 9,
                        bottom: 9,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgMenu,
                        height: getSize(
                          40.00,
                        ),
                        width: getSize(
                          40.00,
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          29.00,
                        ),
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imgEllipse2,
                        height: getSize(
                          58.00,
                        ),
                        width: getSize(
                          58.00,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: getPadding(
                    top: 28,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: getMargin(
                            left: 20,
                            right: 20,
                          ),
                          decoration: AppDecoration.fillGray200.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 19,
                                  top: 19,
                                  bottom: 15,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 1,
                                      ),
                                      child: CommonImageView(
                                        imagePath: ImageConstant.imgSearch11,
                                        height: getVerticalSize(
                                          16.00,
                                        ),
                                        width: getHorizontalSize(
                                          15.00,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 10,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "lbl_search".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 16,
                                  right: 17,
                                  bottom: 17,
                                ),
                                child: CommonImageView(
                                  imagePath: ImageConstant.imgSetting1,
                                  height: getSize(
                                    18.00,
                                  ),
                                  width: getSize(
                                    18.00,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 20,
                          top: 25,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: getPadding(
                                bottom: 5,
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgArrow1,
                                height: getSize(
                                  17.00,
                                ),
                                width: getSize(
                                  17.00,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 18,
                                top: 1,
                              ),
                              child: Text(
                                "lbl_employees".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsSemiBold18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 20,
                          top: 20,
                          right: 20,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              2.86,
                            ),
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imgRectangle1309,
                            height: getSize(
                              102.00,
                            ),
                            width: getSize(
                              102.00,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 20,
                          top: 18,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 1,
                              ),
                              child: Text(
                                "lbl_name2".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular16Black900b2,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 58,
                                bottom: 1,
                              ),
                              child: Text(
                                "lbl_elizabeth_olsen".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 20,
                          top: 25,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 1,
                              ),
                              child: Text(
                                "lbl_age".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsRegular16Black900b2,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 75,
                              ),
                              child: Text(
                                "lbl_23yrs".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 20,
                          top: 21,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "lbl_experiance".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular16Black900b2,
                            ),
                            Padding(
                              padding: getPadding(
                                left: 20,
                                top: 1,
                              ),
                              child: Text(
                                "lbl_3yrs".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            left: 20,
                            top: 19,
                            right: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  bottom: 190,
                                ),
                                child: Text(
                                  "lbl_bio".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular16Black900b2,
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  214.00,
                                ),
                                margin: getMargin(
                                  left: 83,
                                  top: 6,
                                ),
                                child: Text(
                                  "msg_lorem_ipsum_is".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 20,
                          top: 33,
                          right: 20,
                        ),
                        child: Text(
                          "msg_task_compeleted".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold18,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: getPadding(
                            left: 10,
                            top: 20,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  bottom: 1,
                                ),
                                child: Text(
                                  "lbl_task_name".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtNunitoSemiBold15,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 25,
                                  bottom: 1,
                                ),
                                child: Text(
                                  "lbl_start_date".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtNunitoSemiBold15,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 20,
                                ),
                                child: Text(
                                  "lbl_due_date".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtNunitoSemiBold15,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 27,
                                  bottom: 1,
                                ),
                                child: Text(
                                  "lbl_over_time".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtNunitoSemiBold15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          351.00,
                        ),
                        width: size.width,
                        margin: getMargin(
                          top: 7,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                width: getHorizontalSize(
                                  355.00,
                                ),
                                margin: getMargin(
                                  left: 10,
                                  top: 10,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: getVerticalSize(
                                        61.00,
                                      ),
                                      width: getHorizontalSize(
                                        355.00,
                                      ),
                                      decoration: AppDecoration
                                          .outlineBlack9003f
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder5,
                                      ),
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        physics: BouncingScrollPhysics(),
                                        itemCount: 2,
                                        // itemCount: controller
                                        //     .employeeProfileModelObj
                                        //     .value
                                        //     .listpopbugfix2ItemList
                                        //     .length,
                                        itemBuilder: (context, index) {
                                          // Listpopbugfix2ItemModel model =
                                          //     controller
                                          //             .employeeProfileModelObj
                                          //             .value
                                          //             .listpopbugfix2ItemList[
                                          //         index];
                                          return Listpopbugfix2ItemWidget();
                                        },
                                      ),
                                    ),
                                    Container(
                                      height: getVerticalSize(
                                        140.00,
                                      ),
                                      width: getHorizontalSize(
                                        355.00,
                                      ),
                                      margin: getMargin(
                                        top: 18,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                              margin: getMargin(
                                                top: 10,
                                              ),
                                              decoration: AppDecoration
                                                  .outlineBlack9003f
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5,
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 12,
                                                      top: 24,
                                                      bottom: 19,
                                                    ),
                                                    child: Text(
                                                      "lbl_pop_bug_fix".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtNunitoRegular13,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 30,
                                                      top: 23,
                                                      bottom: 22,
                                                    ),
                                                    child: Text(
                                                      "lbl_13_2_2020".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtNunitoRegular13,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 30,
                                                      top: 23,
                                                      bottom: 22,
                                                    ),
                                                    child: Text(
                                                      "lbl_14_2_2020".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtNunitoRegular13,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 30,
                                                      top: 23,
                                                      right: 10,
                                                      bottom: 23,
                                                    ),
                                                    child: Text(
                                                      "lbl_1_hours".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtNunitoRegular13,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              margin: getMargin(
                                                bottom: 10,
                                              ),
                                              decoration: AppDecoration
                                                  .outlineBlack9003f
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5,
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 12,
                                                      top: 24,
                                                      bottom: 19,
                                                    ),
                                                    child: Text(
                                                      "lbl_pop_bug_fix".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtNunitoRegular13,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 30,
                                                      top: 23,
                                                      bottom: 22,
                                                    ),
                                                    child: Text(
                                                      "lbl_13_2_2020".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtNunitoRegular13,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 30,
                                                      top: 23,
                                                      bottom: 22,
                                                    ),
                                                    child: Text(
                                                      "lbl_14_2_2020".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtNunitoRegular13,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 30,
                                                      top: 23,
                                                      right: 10,
                                                      bottom: 23,
                                                    ),
                                                    child: Text(
                                                      "lbl_1_hours".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtNunitoRegular13,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
