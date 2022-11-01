import '../add_new_bookings_screen/widgets/listpopbugfix1_item_widget.dart';
import '../add_new_bookings_screen/widgets/listpopbugfix_three1_item_widget.dart';
import 'controller/add_new_bookings_controller.dart';
import 'models/listpopbugfix1_item_model.dart';
import 'models/listpopbugfix_three1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:uteamly/core/app_export.dart';
import 'package:uteamly/core/utils/validation_functions.dart';
import 'package:uteamly/widgets/custom_bottom_bar.dart';
import 'package:uteamly/widgets/custom_button.dart';
import 'package:uteamly/widgets/custom_icon_button.dart';
import 'package:uteamly/widgets/custom_text_form_field.dart';

class AddNewBookingsScreen extends GetWidget<AddNewBookingsController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 20,
                  top: 33,
                  bottom: 547,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: size.width,
                      child: Container(
                        width: getHorizontalSize(
                          331.00,
                        ),
                        margin: getMargin(
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
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: getHorizontalSize(
                          335.00,
                        ),
                        margin: getMargin(
                          top: 28,
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
                                top: 17,
                                right: 16,
                                bottom: 16,
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
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          top: 24,
                          right: 282,
                        ),
                        child: Text(
                          "lbl_tasks".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold18,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: getHorizontalSize(
                          120.00,
                        ),
                        margin: getMargin(
                          top: 14,
                          right: 215,
                        ),
                        decoration: AppDecoration.fillCyan900.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                left: 10,
                                top: 13,
                                right: 10,
                                bottom: 11,
                              ),
                              child: Text(
                                "lbl_add_new_booking".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium11WhiteA700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                padding: getPadding(
                  bottom: 80,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: size.height,
                      width: size.width,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: getPadding(
                                left: 10,
                                top: 290,
                                bottom: 290,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      height: getVerticalSize(
                                        31.00,
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
                                                .groupFortyTwoController,
                                            hintText: "lbl_bookings".tr,
                                            margin: getMargin(
                                              left: 1,
                                              right: 10,
                                            ),
                                            variant: TextFormFieldVariant
                                                .UnderLineBlue600,
                                            fontStyle: TextFormFieldFontStyle
                                                .PoppinsSemiBold16,
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
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      width: getHorizontalSize(
                                        357.00,
                                      ),
                                      margin: getMargin(
                                        left: 10,
                                        top: 16,
                                        bottom: 1,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
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
                                              style:
                                                  AppStyle.txtNunitoSemiBold15,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "lbl_start_date".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtNunitoSemiBold15,
                                            ),
                                          ),
                                          Text(
                                            "lbl_due_date".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtNunitoSemiBold15,
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              bottom: 1,
                                            ),
                                            child: Text(
                                              "lbl_over_time".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtNunitoSemiBold15,
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
                            alignment: Alignment.bottomRight,
                            child: Container(
                              width: getHorizontalSize(
                                355.00,
                              ),
                              margin: getMargin(
                                left: 10,
                                top: 98,
                                bottom: 98,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Obx(
                                    () => ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller
                                          .addNewBookingsModelObj
                                          .value
                                          .listpopbugfix1ItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        Listpopbugfix1ItemModel model =
                                            controller
                                                .addNewBookingsModelObj
                                                .value
                                                .listpopbugfix1ItemList[index];
                                        return Listpopbugfix1ItemWidget(
                                          model,
                                        );
                                      },
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      102.00,
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
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  7.00,
                                                ),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: CommonImageView(
                                                    imagePath: ImageConstant
                                                        .imgRectangle127661X355,
                                                    height: getVerticalSize(
                                                      61.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      355.00,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            height: getVerticalSize(
                                              71.00,
                                            ),
                                            width: getHorizontalSize(
                                              355.00,
                                            ),
                                            decoration: AppDecoration
                                                .outlineBlack9003f
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder5,
                                            ),
                                            child: Obx(
                                              () => ListView.builder(
                                                padding: getPadding(
                                                  bottom: 10,
                                                ),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                physics:
                                                    BouncingScrollPhysics(),
                                                itemCount: controller
                                                    .addNewBookingsModelObj
                                                    .value
                                                    .listpopbugfixThree1ItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  ListpopbugfixThree1ItemModel
                                                      model = controller
                                                          .addNewBookingsModelObj
                                                          .value
                                                          .listpopbugfixThree1ItemList[index];
                                                  return ListpopbugfixThree1ItemWidget(
                                                    model,
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                        CustomIconButton(
                                          height: 38,
                                          width: 38,
                                          margin: getMargin(
                                            left: 30,
                                            top: 12,
                                            right: 30,
                                            bottom: 12,
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
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              margin: getMargin(
                                bottom: 5,
                              ),
                              decoration: AppDecoration.fillBlack90068,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      width: double.infinity,
                                      margin: getMargin(
                                        top: 103,
                                        bottom: 99,
                                      ),
                                      decoration:
                                          AppDecoration.fillWhiteA700.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder15,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              left: 17,
                                              top: 36,
                                              right: 17,
                                            ),
                                            child: Text(
                                              "lbl_add_new_booking".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtPoppinsSemiBold18,
                                            ),
                                          ),
                                          CustomTextFormField(
                                            width: 331,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.groupThreeController,
                                            hintText: "lbl_task_name".tr,
                                            margin: getMargin(
                                              left: 17,
                                              top: 39,
                                              right: 17,
                                            ),
                                            validator: (value) {
                                              if (!isText(value)) {
                                                return "Please enter valid text";
                                              }
                                              return null;
                                            },
                                          ),
                                          CustomTextFormField(
                                            width: 331,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.groupOneController,
                                            hintText: "lbl_project".tr,
                                            margin: getMargin(
                                              left: 17,
                                              top: 18,
                                              right: 17,
                                            ),
                                          ),
                                          CustomTextFormField(
                                            width: 331,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.group3786Controller,
                                            hintText: "lbl_start_date".tr,
                                            margin: getMargin(
                                              left: 17,
                                              top: 18,
                                              right: 17,
                                            ),
                                          ),
                                          CustomTextFormField(
                                            width: 331,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.group3787Controller,
                                            hintText: "lbl_end_date".tr,
                                            margin: getMargin(
                                              left: 17,
                                              top: 18,
                                              right: 17,
                                            ),
                                          ),
                                          CustomTextFormField(
                                            width: 331,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.group3788Controller,
                                            hintText: "lbl_over_time".tr,
                                            margin: getMargin(
                                              left: 17,
                                              top: 18,
                                              right: 17,
                                            ),
                                          ),
                                          CustomTextFormField(
                                            width: 331,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.group3789Controller,
                                            hintText: "lbl_assign_to".tr,
                                            margin: getMargin(
                                              left: 17,
                                              top: 18,
                                              right: 17,
                                            ),
                                            textInputAction:
                                                TextInputAction.done,
                                          ),
                                          CustomButton(
                                            width: 341,
                                            text: "lbl_create".tr,
                                            margin: getMargin(
                                              left: 17,
                                              top: 21,
                                              right: 17,
                                              bottom: 26,
                                            ),
                                            shape: ButtonShape.CircleBorder26,
                                            padding: ButtonPadding.PaddingAll17,
                                            fontStyle: ButtonFontStyle
                                                .PoppinsSemiBold16,
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
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              margin: getMargin(
                                left: 1,
                                top: 10,
                              ),
                              decoration: AppDecoration.outlineGray9000f,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: getHorizontalSize(
                                      284.00,
                                    ),
                                    margin: getMargin(
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
                                          imagePath: ImageConstant.imgTodolist1,
                                          height: getSize(
                                            20.00,
                                          ),
                                          width: getSize(
                                            20.00,
                                          ),
                                        ),
                                        CommonImageView(
                                          imagePath: ImageConstant.imgEmployee1,
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
                                            style: AppStyle.txtPoppinsMedium7,
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
                                            style: AppStyle
                                                .txtPoppinsMedium7WhiteA70083,
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
                    Padding(
                      padding: getPadding(
                        left: 38,
                        top: 338,
                        bottom: 454,
                      ),
                      child: Text(
                        "lbl_assigned_to".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtNunitoSemiBold15,
                      ),
                    ),
                  ],
                ),
              ),
              CustomBottomBar(
                onChanged: (BottomBarEnum type) {
                  controller.type.value = type;
                },
              ),
            ],
          ),
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
