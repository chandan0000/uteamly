import '../bookings_task_screen/widgets/listpopbugfix_item_widget.dart';
import '../bookings_task_screen/widgets/listpopbugfix_three_item_widget.dart';
import 'controller/bookings_task_controller.dart';
import 'models/listpopbugfix_item_model.dart';
import 'models/listpopbugfix_three_item_model.dart';
import 'package:flutter/material.dart';
import 'package:uteamly/core/app_export.dart';
import 'package:uteamly/widgets/custom_bottom_bar.dart';
import 'package:uteamly/widgets/custom_button.dart';
import 'package:uteamly/widgets/custom_icon_button.dart';
import 'package:uteamly/widgets/custom_text_form_field.dart';

class BookingsTaskScreen extends GetWidget<BookingsTaskController> {
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
                    left: 1,
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
                            left: 19,
                            right: 19,
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
                      Padding(
                        padding: getPadding(
                          left: 19,
                          top: 24,
                          right: 19,
                        ),
                        child: Text(
                          "lbl_tasks".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold18,
                        ),
                      ),
                      CustomButton(
                        width: 120,
                        text: "lbl_add_new_booking".tr,
                        margin: getMargin(
                          left: 19,
                          top: 14,
                          right: 19,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: getPadding(
                            left: 19,
                            top: 25,
                            right: 1,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  bottom: 1,
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
                                                  .groupFortyFiveController,
                                              hintText: "lbl_bookings".tr,
                                              margin: getMargin(
                                                left: 1,
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
                                                style: AppStyle
                                                    .txtNunitoSemiBold15,
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
                                                style: AppStyle
                                                    .txtNunitoSemiBold15,
                                              ),
                                            ),
                                            Text(
                                              "lbl_due_date".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtNunitoSemiBold15,
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                bottom: 1,
                                              ),
                                              child: Text(
                                                "lbl_over_time".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtNunitoSemiBold15,
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
                                  top: 47,
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
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: getPadding(
                            left: 19,
                            top: 17,
                            right: 1,
                          ),
                          child: Obx(
                            () => ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.bookingsTaskModelObj.value
                                  .listpopbugfixItemList.length,
                              itemBuilder: (context, index) {
                                ListpopbugfixItemModel model = controller
                                    .bookingsTaskModelObj
                                    .value
                                    .listpopbugfixItemList[index];
                                return ListpopbugfixItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: getVerticalSize(
                            102.00,
                          ),
                          width: getHorizontalSize(
                            355.00,
                          ),
                          margin: getMargin(
                            left: 19,
                            top: 18,
                            right: 1,
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
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        7.00,
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle1276,
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
                                  decoration:
                                      AppDecoration.outlineBlack9003f.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5,
                                  ),
                                  child: Obx(
                                    () => ListView.builder(
                                      padding: getPadding(
                                        bottom: 10,
                                      ),
                                      scrollDirection: Axis.horizontal,
                                      physics: BouncingScrollPhysics(),
                                      itemCount: controller
                                          .bookingsTaskModelObj
                                          .value
                                          .listpopbugfixThreeItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        ListpopbugfixThreeItemModel model =
                                            controller
                                                    .bookingsTaskModelObj
                                                    .value
                                                    .listpopbugfixThreeItemList[
                                                index];
                                        return ListpopbugfixThreeItemWidget(
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
                                  imagePath: ImageConstant.imgGroup3846,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: getMargin(
                          top: 18,
                        ),
                        decoration: AppDecoration.outlineGray9000f,
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
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  CommonImageView(
                                    imagePath: ImageConstant.imgDashboard5,
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
                                    imagePath: ImageConstant.imgGoogledocs1,
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                                      style:
                                          AppStyle.txtPoppinsMedium7WhiteA70083,
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
                                      style:
                                          AppStyle.txtPoppinsMedium7WhiteA70083,
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
                                      style:
                                          AppStyle.txtPoppinsMedium7WhiteA70083,
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
                                      style:
                                          AppStyle.txtPoppinsMedium7WhiteA70083,
                                    ),
                                  ),
                                ],
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
