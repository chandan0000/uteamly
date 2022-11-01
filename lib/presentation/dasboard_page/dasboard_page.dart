import '../dasboard_page/widgets/dasboard_item_widget.dart';
import 'controller/dasboard_controller.dart';
import 'models/dasboard_item_model.dart';
import 'models/dasboard_model.dart';
import 'package:flutter/material.dart';
import 'package:uteamly/core/app_export.dart';
import 'package:uteamly/widgets/custom_button.dart';
import 'package:uteamly/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class DasboardPage extends StatelessWidget {
  DasboardController controller =
      Get.put(DasboardController(DasboardModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          decoration: AppDecoration.fillWhiteA700,
          child: Column(
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
                    crossAxisAlignment: CrossAxisAlignment.end,
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
                      Padding(
                        padding: getPadding(
                          top: 25,
                          bottom: 14,
                        ),
                        child: Text(
                          "msg_welcome_back_d".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsSemiBold15,
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
                      left: 20,
                      top: 28,
                      right: 19,
                      bottom: 5,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: getMargin(
                              right: 1,
                            ),
                            decoration: AppDecoration.fillGray200.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 19,
                                    top: 20,
                                    bottom: 15,
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
                                    top: 19,
                                    bottom: 15,
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
                        ),
                        Container(
                          margin: getMargin(
                            top: 26,
                            right: 10,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "msg_latest_notofica2".tr,
                                  style: TextStyle(
                                    color: ColorConstant.blue600,
                                    fontSize: getFontSize(
                                      16,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(
                                  text: "lbl_2".tr,
                                  style: TextStyle(
                                    color: ColorConstant.black90082,
                                    fontSize: getFontSize(
                                      15,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              top: 20,
                              right: 1,
                            ),
                            child: Obx(
                              () => ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: controller.dasboardModelObj.value
                                    .dasboardItemList.length,
                                itemBuilder: (context, index) {
                                  DasboardItemModel model = controller
                                      .dasboardModelObj
                                      .value
                                      .dasboardItemList[index];
                                  return DasboardItemWidget(
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
                            width: double.infinity,
                            margin: getMargin(
                              left: 1,
                              top: 15,
                              right: 2,
                            ),
                            decoration:
                                AppDecoration.outlineBlack9003f1.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder11,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 91,
                                    top: 23,
                                    right: 90,
                                  ),
                                  child: Text(
                                    "msg_ai_bug_fix_prog".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold16,
                                  ),
                                ),
                                Container(
                                  height: getSize(
                                    147.00,
                                  ),
                                  width: getSize(
                                    147.00,
                                  ),
                                  margin: getMargin(
                                    left: 91,
                                    top: 22,
                                    right: 91,
                                    bottom: 30,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: getPadding(
                                            all: 40,
                                          ),
                                          child: Text(
                                            "lbl_75".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsBold20,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          height: getSize(
                                            147.00,
                                          ),
                                          width: getSize(
                                            147.00,
                                          ),
                                          child: CircularProgressIndicator(
                                            value: 0.5,
                                            strokeWidth: getHorizontalSize(
                                              11.00,
                                            ),
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
                        Container(
                          height: getVerticalSize(
                            258.00,
                          ),
                          width: getHorizontalSize(
                            336.00,
                          ),
                          margin: getMargin(
                            top: 20,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: getPadding(
                                    left: 1,
                                    top: 71,
                                    right: 4,
                                    bottom: 71,
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
                                          "lbl_dashboard".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsMedium7,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 259,
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
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  margin: getMargin(
                                    right: 2,
                                    bottom: 1,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlack9003f1.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder11,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 12,
                                            top: 18,
                                            right: 7,
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
                                                  top: 5,
                                                  bottom: 5,
                                                ),
                                                child: Text(
                                                  "lbl_employe_list".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsSemiBold16,
                                                ),
                                              ),
                                              CustomButton(
                                                width: 105,
                                                text: "lbl_view_all".tr,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 12,
                                            top: 79,
                                            right: 12,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  getHorizontalSize(
                                                    21.50,
                                                  ),
                                                ),
                                                child: CommonImageView(
                                                  imagePath:
                                                      ImageConstant.imgEllipse3,
                                                  height: getSize(
                                                    43.00,
                                                  ),
                                                  width: getSize(
                                                    43.00,
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 16,
                                                  bottom: 15,
                                                ),
                                                child: Text(
                                                  "lbl_minerva_bannet".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium11,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 16,
                                                  bottom: 15,
                                                ),
                                                child: Text(
                                                  "lbl_9182".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium11,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 16,
                                                  bottom: 15,
                                                ),
                                                child: Text(
                                                  "lbl_edit".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium11Blue600,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 16,
                                                  bottom: 15,
                                                ),
                                                child: Text(
                                                  "lbl_view".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium11Blue600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(
                                          1.00,
                                        ),
                                        width: getHorizontalSize(
                                          334.00,
                                        ),
                                        margin: getMargin(
                                          top: 12,
                                          bottom: 66,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.black90030,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: getPadding(
                                    top: 69,
                                    bottom: 69,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 12,
                                          right: 12,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  21.50,
                                                ),
                                              ),
                                              child: CommonImageView(
                                                imagePath: ImageConstant
                                                    .imgEllipse343X43,
                                                height: getSize(
                                                  43.00,
                                                ),
                                                width: getSize(
                                                  43.00,
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 16,
                                                bottom: 15,
                                              ),
                                              child: Text(
                                                "lbl_minerva_bannet".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtPoppinsMedium11,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 16,
                                                bottom: 15,
                                              ),
                                              child: Text(
                                                "lbl_9182".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtPoppinsMedium11,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 16,
                                                bottom: 15,
                                              ),
                                              child: Text(
                                                "lbl_edit".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium11Blue600,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 16,
                                                bottom: 15,
                                              ),
                                              child: Text(
                                                "lbl_view".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium11Blue600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(
                                          1.00,
                                        ),
                                        width: getHorizontalSize(
                                          336.00,
                                        ),
                                        margin: getMargin(
                                          top: 12,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.black90030,
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
                                    top: 10,
                                    right: 4,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 12,
                                          right: 7,
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
                                                bottom: 12,
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  getHorizontalSize(
                                                    21.50,
                                                  ),
                                                ),
                                                child: CommonImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse31,
                                                  height: getSize(
                                                    43.00,
                                                  ),
                                                  width: getSize(
                                                    43.00,
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 16,
                                                bottom: 27,
                                              ),
                                              child: Text(
                                                "lbl_minerva_bannet".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtPoppinsMedium11,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 16,
                                                bottom: 27,
                                              ),
                                              child: Text(
                                                "lbl_9182".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtPoppinsMedium11,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 16,
                                                bottom: 27,
                                              ),
                                              child: Text(
                                                "lbl_edit".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium11Blue600,
                                              ),
                                            ),
                                            Container(
                                              height: getSize(
                                                38.00,
                                              ),
                                              width: getSize(
                                                38.00,
                                              ),
                                              margin: getMargin(
                                                top: 16,
                                              ),
                                              child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Padding(
                                                      padding: getPadding(
                                                        left: 6,
                                                        right: 5,
                                                        bottom: 10,
                                                      ),
                                                      child: Text(
                                                        "lbl_view".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsMedium11Blue600,
                                                      ),
                                                    ),
                                                  ),
                                                  CustomIconButton(
                                                    height: 38,
                                                    width: 38,
                                                    margin: getMargin(
                                                      top: 1,
                                                    ),
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: CommonImageView(
                                                      imagePath: ImageConstant
                                                          .imgGroup3846,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(
                                          1.00,
                                        ),
                                        width: getHorizontalSize(
                                          332.00,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.black90030,
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
      ),
    );
  }
}
