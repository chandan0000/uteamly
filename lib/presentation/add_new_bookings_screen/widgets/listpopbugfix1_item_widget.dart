import '../controller/add_new_bookings_controller.dart';
import '../models/add_new_bookings_screen_item_model.dart';
import '../models/listpopbugfix1_item_model.dart';
import '../widgets/add_new_bookings_screen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:uteamly/core/app_export.dart';

// ignore: must_be_immutable
class Listpopbugfix1ItemWidget extends StatelessWidget {
  Listpopbugfix1ItemWidget(this.listpopbugfix1ItemModelObj);

  Listpopbugfix1ItemModel listpopbugfix1ItemModelObj;

  var controller = Get.find<AddNewBookingsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
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
              listpopbugfix1ItemModelObj.addNewBookingsScreenItemList.length,
          itemBuilder: (context, index) {
            AddNewBookingsScreenItemModel model =
                listpopbugfix1ItemModelObj.addNewBookingsScreenItemList[index];
            return AddNewBookingsScreenItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
