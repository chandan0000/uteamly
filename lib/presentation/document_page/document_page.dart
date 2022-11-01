import '../document_page/widgets/document_item_widget.dart';
import 'controller/document_controller.dart';
import 'models/document_item_model.dart';
import 'models/document_model.dart';
import 'package:flutter/material.dart';
import 'package:uteamly/core/app_export.dart';
import 'package:uteamly/widgets/custom_button.dart';
import 'package:uteamly/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class DocumentPage extends StatelessWidget {
  DocumentController controller =
      Get.put(DocumentController(DocumentModel().obs));

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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                            left: 19,
                            top: 24,
                            right: 19,
                          ),
                          child: Text(
                            "lbl_documents".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsSemiBold18,
                          ),
                        ),
                        CustomButton(
                          width: 152,
                          text: "msg_request_for_doc".tr,
                          margin: getMargin(
                            left: 19,
                            top: 14,
                            right: 19,
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            517.00,
                          ),
                          width: size.width,
                          margin: getMargin(
                            top: 30,
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
                                    right: 1,
                                    bottom: 10,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Obx(
                                        () => ListView.builder(
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: controller.documentModelObj
                                              .value.documentItemList.length,
                                          itemBuilder: (context, index) {
                                            DocumentItemModel model = controller
                                                .documentModelObj
                                                .value
                                                .documentItemList[index];
                                            return DocumentItemWidget(
                                              model,
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: getPadding(
                                    top: 10,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                              imagePath:
                                                  ImageConstant.imgEmail51,
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
                                                style:
                                                    AppStyle.txtPoppinsMedium7,
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
      ),
    );
  }
}
