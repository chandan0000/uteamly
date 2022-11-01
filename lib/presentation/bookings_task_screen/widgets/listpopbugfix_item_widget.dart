import '../controller/bookings_task_controller.dart';
import '../models/bookings_task_screen_item_model.dart';
import '../models/listpopbugfix_item_model.dart';
import '../widgets/bookings_task_screen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:uteamly/core/app_export.dart';

// ignore: must_be_immutable
class ListpopbugfixItemWidget extends StatelessWidget {
  ListpopbugfixItemWidget(this.listpopbugfixItemModelObj);

  ListpopbugfixItemModel listpopbugfixItemModelObj;

  var controller = Get.find<BookingsTaskController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        height: getVerticalSize(
          79.00,
        ),
        width: getHorizontalSize(
          355.00,
        ),
        decoration: AppDecoration.outlineBlack9003f.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Obx(
          () => ListView.builder(
            padding: getPadding(
              top: 9.0,
              bottom: 9.0,
            ),
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemCount:
                listpopbugfixItemModelObj.bookingsTaskScreenItemList.length,
            itemBuilder: (context, index) {
              BookingsTaskScreenItemModel model =
                  listpopbugfixItemModelObj.bookingsTaskScreenItemList[index];
              return BookingsTaskScreenItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
