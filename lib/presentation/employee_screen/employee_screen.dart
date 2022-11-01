import '../employee_screen/widgets/employee_item_widget.dart';
import 'controller/employee_controller.dart';
import 'models/employee_item_model.dart';
import 'package:flutter/material.dart';
import 'package:uteamly/core/app_export.dart';
import 'package:uteamly/widgets/custom_bottom_bar.dart';
import 'package:uteamly/widgets/custom_checkbox.dart';
import 'package:uteamly/widgets/custom_icon_button.dart';
import 'package:uteamly/widgets/custom_text_form_field.dart';

class EmployeeScreen extends GetWidget<EmployeeController> {
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
                          top: 26,
                          right: 20,
                        ),
                        child: Text(
                          "lbl_employees".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold18,
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          38.00,
                        ),
                        width: getHorizontalSize(
                          120.00,
                        ),
                        margin: getMargin(
                          left: 24,
                          top: 10,
                          right: 24,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    4.00,
                                  ),
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgGroup3779,
                                  height: getVerticalSize(
                                    38.00,
                                  ),
                                  width: getHorizontalSize(
                                    120.00,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: getPadding(
                                  left: 20,
                                  top: 11,
                                  right: 17,
                                  bottom: 10,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    CommonImageView(
                                      imagePath: ImageConstant.imgPrinting1,
                                      height: getVerticalSize(
                                        17.00,
                                      ),
                                      width: getHorizontalSize(
                                        12.00,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 4,
                                        top: 2,
                                        bottom: 3,
                                      ),
                                      child: Text(
                                        "lbl_print_details".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium11WhiteA700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          520.00,
                        ),
                        width: size.width,
                        margin: getMargin(
                          top: 26,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                width: getHorizontalSize(
                                  355.00,
                                ),
                                margin: getMargin(
                                  left: 10,
                                  bottom: 10,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: getVerticalSize(
                                        30.00,
                                      ),
                                      width: getHorizontalSize(
                                        355.00,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          CustomTextFormField(
                                            width: 101,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .groupThirtyThreeController,
                                            hintText: "lbl_employees".tr,
                                            margin: getMargin(
                                              right: 10,
                                            ),
                                            variant: TextFormFieldVariant
                                                .UnderLineBlue600,
                                            fontStyle: TextFormFieldFontStyle
                                                .PoppinsSemiBold16,
                                            textInputAction:
                                                TextInputAction.done,
                                            alignment: Alignment.centerLeft,
                                          ),
                                          Container(
                                            height: getVerticalSize(
                                              1.00,
                                            ),
                                            width: getHorizontalSize(
                                              355.00,
                                            ),
                                            margin: getMargin(
                                              top: 10,
                                              bottom: 2,
                                            ),
                                            decoration: BoxDecoration(
                                              color: ColorConstant.black90072,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        padding: getPadding(
                                          left: 13,
                                          top: 15,
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                bottom: 2,
                                              ),
                                              child: Text(
                                                "lbl_id".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtNunitoSemiBold15,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 97,
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding: getPadding(
                                                      bottom: 2,
                                                    ),
                                                    child: Text(
                                                      "lbl_name".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtNunitoSemiBold15,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 60,
                                                      bottom: 2,
                                                    ),
                                                    child: Text(
                                                      "lbl_role".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtNunitoSemiBold15,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 50,
                                                      bottom: 2,
                                                    ),
                                                    child: Text(
                                                      "lbl_phone_no".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtNunitoSemiBold15,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 84,
                                                    ),
                                                    child: Text(
                                                      "lbl_email".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtNunitoSemiBold15,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 1,
                                          top: 17,
                                        ),
                                        child: Obx(
                                          () => ListView.builder(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: controller
                                                .employeeModelObj
                                                .value
                                                .employeeItemList
                                                .length,
                                            itemBuilder: (context, index) {
                                              EmployeeItemModel model =
                                                  controller
                                                      .employeeModelObj
                                                      .value
                                                      .employeeItemList[index];
                                              return EmployeeItemWidget(
                                                model,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: getVerticalSize(
                                          139.00,
                                        ),
                                        width: getHorizontalSize(
                                          354.00,
                                        ),
                                        margin: getMargin(
                                          left: 1,
                                          top: 17,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                margin: getMargin(
                                                  bottom: 10,
                                                ),
                                                decoration: AppDecoration
                                                    .outlineBlack9003f
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder5,
                                                ),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Obx(
                                                      () => CustomCheckbox(
                                                        text: "lbl_19281".tr,
                                                        iconSize: 22,
                                                        value: controller
                                                            .checkbox.value,
                                                        padding: getPadding(
                                                          left: 12,
                                                          top: 21,
                                                          bottom: 18,
                                                        ),
                                                        onChange: (value) {
                                                          controller.checkbox
                                                              .value = value;
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
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtNunitoRegular13,
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
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtNunitoRegular13,
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
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtNunitoRegular13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Container(
                                                margin: getMargin(
                                                  top: 10,
                                                ),
                                                decoration: AppDecoration
                                                    .outlineBlack9003f
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder5,
                                                ),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Obx(
                                                      () => CustomCheckbox(
                                                        text: "lbl_19281".tr,
                                                        iconSize: 22,
                                                        value: controller
                                                            .checkbox1.value,
                                                        padding: getPadding(
                                                          left: 12,
                                                          top: 21,
                                                          bottom: 18,
                                                        ),
                                                        onChange: (value) {
                                                          controller.checkbox1
                                                              .value = value;
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
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtNunitoRegular13,
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
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtNunitoRegular13,
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
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtNunitoRegular13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            CustomIconButton(
                                              height: 38,
                                              width: 38,
                                              margin: getMargin(
                                                left: 30,
                                                top: 45,
                                                right: 30,
                                                bottom: 45,
                                              ),
                                              alignment: Alignment.bottomRight,
                                              child: CommonImageView(
                                                imagePath:
                                                    ImageConstant.imgGroup3846,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        width: double.infinity,
                                        margin: getMargin(
                                          left: 1,
                                          top: 17,
                                        ),
                                        decoration: AppDecoration
                                            .outlineBlack9003f
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder5,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                height: getSize(
                                                  22.00,
                                                ),
                                                width: getSize(
                                                  22.00,
                                                ),
                                                margin: getMargin(
                                                  left: 12,
                                                  top: 21,
                                                  right: 12,
                                                  bottom: 18,
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      3.00,
                                                    ),
                                                  ),
                                                  border: Border.all(
                                                    color: ColorConstant
                                                        .bluegray100,
                                                    width: getHorizontalSize(
                                                      1.00,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                padding: getPadding(
                                  top: 10,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 1,
                                      ),
                                      child: CommonImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle58480X375,
                                        height: getVerticalSize(
                                          80.00,
                                        ),
                                        width: getHorizontalSize(
                                          375.00,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 3,
                                        top: 55,
                                        bottom: 7,
                                      ),
                                      child: Text(
                                        "lbl_manager".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtNunitoRegular13,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: getPadding(
                                  left: 1,
                                  top: 10,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 36,
                                        top: 20,
                                        right: 36,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          CommonImageView(
                                            imagePath:
                                                ImageConstant.imgDashboard5,
                                            height: getSize(
                                              20.00,
                                            ),
                                            width: getSize(
                                              20.00,
                                            ),
                                          ),
                                          CommonImageView(
                                            imagePath:
                                                ImageConstant.imgTodolist1,
                                            height: getSize(
                                              20.00,
                                            ),
                                            width: getSize(
                                              20.00,
                                            ),
                                          ),
                                          CommonImageView(
                                            imagePath:
                                                ImageConstant.imgEmployee1,
                                            height: getSize(
                                              20.00,
                                            ),
                                            width: getSize(
                                              20.00,
                                            ),
                                          ),
                                          CommonImageView(
                                            imagePath: ImageConstant.imgEmail51,
                                            height: getSize(
                                              20.00,
                                            ),
                                            width: getSize(
                                              20.00,
                                            ),
                                          ),
                                          CommonImageView(
                                            imagePath:
                                                ImageConstant.imgGoogledocs1,
                                            height: getSize(
                                              20.00,
                                            ),
                                            width: getSize(
                                              20.00,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 36,
                                        top: 11,
                                        right: 36,
                                        bottom: 19,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              bottom: 2,
                                            ),
                                            child: Text(
                                              "lbl_dashboard".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsMedium7WhiteA70083,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 29,
                                              top: 1,
                                            ),
                                            child: Text(
                                              "lbl_bookings".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsMedium7WhiteA70083,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 19,
                                              top: 1,
                                            ),
                                            child: Text(
                                              "msg_employee_profil".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtPoppinsMedium7,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 20,
                                              top: 1,
                                            ),
                                            child: Text(
                                              "lbl_message".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsMedium7WhiteA70083,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 30,
                                              top: 1,
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "lbl_document".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsMedium7WhiteA70083,
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
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            controller.type.value = type;
          },
        ),
      ),
    );
  }

  ///Handling view based on bottom click actions
  Widget getCurrentWidget(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Dashboard:
        return getDefaultWidget();
      case BottomBarEnum.Activities:
        return getDefaultWidget();
      case BottomBarEnum.Tutorials:
        return getDefaultWidget();
      case BottomBarEnum.Employee:
        return getDefaultWidget();
      case BottomBarEnum.Helpcenter:
        return getDefaultWidget();
      case BottomBarEnum.Document:
        return getDefaultWidget();
      case BottomBarEnum.Message:
        return getDefaultWidget();
      case BottomBarEnum.Tasks:
        return getDefaultWidget();
      default:
        return getDefaultWidget();
    }
  }
}
