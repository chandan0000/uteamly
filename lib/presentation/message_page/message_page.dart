import '../message_page/widgets/message_item_widget.dart';
import 'controller/message_controller.dart';
import 'models/message_item_model.dart';
import 'models/message_model.dart';
import 'package:flutter/material.dart';
import 'package:uteamly/core/app_export.dart';
import 'package:uteamly/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class MessagePage extends StatelessWidget {
  MessageController controller = Get.put(MessageController(MessageModel().obs));

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
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: getVerticalSize(
                              640,
                            ),
                            width: getHorizontalSize(
                              330.00,
                            ),
                            margin: getMargin(
                              left: 20,
                              top: 24,
                              right: 20,
                            ),
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                CustomIconButton(
                                  height: 38,
                                  width: 38,
                                  margin: getMargin(
                                    left: 10,
                                    top: 28,
                                    right: 5,
                                    bottom: 38,
                                  ),
                                  alignment: Alignment.bottomRight,
                                  child: CommonImageView(
                                    imagePath: ImageConstant.imgGroup3846,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
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
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            left: 4,
                                            right: 10,
                                          ),
                                          child: Text(
                                            "lbl_inbox".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsSemiBold18,
                                          ),
                                        ),
                                        Container(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                          width: getHorizontalSize(
                                            330.00,
                                          ),
                                          margin: getMargin(
                                            top: 19,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.black90072,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 21,
                                          ),
                                          child: Obx(
                                            () => ListView.builder(
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              shrinkWrap: true,
                                              itemCount: controller
                                                  .messageModelObj
                                                  .value
                                                  .messageItemList
                                                  .length,
                                              itemBuilder: (context, index) {
                                                MessageItemModel model =
                                                    controller
                                                        .messageModelObj
                                                        .value
                                                        .messageItemList[index];
                                                return MessageItemWidget(
                                                  model,
                                                );
                                              },
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
