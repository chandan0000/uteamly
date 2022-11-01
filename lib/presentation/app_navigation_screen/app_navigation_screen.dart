import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:uteamly/core/app_export.dart';
class AppNavigationScreen extends GetWidget<AppNavigationController>  {
 

 
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

// class AppNavigationScreen extends GetWidget<AppNavigationController> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             backgroundColor: ColorConstant.whiteA700,
//             body: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Container(
//                       width: size.width,
//                       decoration: AppDecoration.fillWhiteA700,
//                       child: Column(
//                           mainAxisSize: MainAxisSize.min,
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: Padding(
//                                     padding: getPadding(
//                                         left: 20,
//                                         top: 10,
//                                         right: 20,
//                                         bottom: 10),
//                                     child: Text("lbl_app_navigation".tr,
//                                         overflow: TextOverflow.ellipsis,
//                                         textAlign: TextAlign.center,
//                                         style: AppStyle.txtRobotoRegular20))),
//                             Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: Padding(
//                                     padding: getPadding(left: 20),
//                                     child: Text("msg_check_your_app".tr,
//                                         overflow: TextOverflow.ellipsis,
//                                         textAlign: TextAlign.center,
//                                         style: AppStyle.txtRobotoRegular16))),
//                             Container(
//                                 height: getVerticalSize(1.00),
//                                 width: size.width,
//                                 margin: getMargin(top: 5),
//                                 decoration: BoxDecoration(
//                                     color: ColorConstant.black900))
//                           ])),
//                   Expanded(
//                       child: Align(
//                           alignment: Alignment.center,
//                           child: SingleChildScrollView(
//                               child: Container(
//                                   decoration: AppDecoration.fillWhiteA700,
//                                   child: Column(
//                                       mainAxisSize: MainAxisSize.min,
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.start,
//                                       children: [
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapDasboardContainer();
//                                             },
//                                             child: Container(
//                                                 width: size.width,
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisSize:
//                                                         MainAxisSize.min,
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "msg_dasboard_cont"
//                                                                       .tr,
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20Black900))),
//                                                       Container(
//                                                           height:
//                                                               getVerticalSize(
//                                                                   1.00),
//                                                           width: size.width,
//                                                           margin:
//                                                               getMargin(top: 5),
//                                                           decoration: BoxDecoration(
//                                                               color: ColorConstant
//                                                                   .bluegray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapBookingstask();
//                                             },
//                                             child: Container(
//                                                 width: size.width,
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisSize:
//                                                         MainAxisSize.min,
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "lbl_bookings_task"
//                                                                       .tr,
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20Black9001))),
//                                                       Container(
//                                                           height:
//                                                               getVerticalSize(
//                                                                   1.00),
//                                                           width: size.width,
//                                                           margin:
//                                                               getMargin(top: 5),
//                                                           decoration: BoxDecoration(
//                                                               color: ColorConstant
//                                                                   .bluegray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapAddnewBookings();
//                                             },
//                                             child: Container(
//                                                 width: size.width,
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisSize:
//                                                         MainAxisSize.min,
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "msg_add_new_booking"
//                                                                       .tr,
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20Black9002))),
//                                                       Container(
//                                                           height:
//                                                               getVerticalSize(
//                                                                   1.00),
//                                                           width: size.width,
//                                                           margin:
//                                                               getMargin(top: 5),
//                                                           decoration: BoxDecoration(
//                                                               color: ColorConstant
//                                                                   .bluegray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapEmployee();
//                                             },
//                                             child: Container(
//                                                 width: size.width,
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisSize:
//                                                         MainAxisSize.min,
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "lbl_employee"
//                                                                       .tr,
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20Black9003))),
//                                                       Container(
//                                                           height:
//                                                               getVerticalSize(
//                                                                   1.00),
//                                                           width: size.width,
//                                                           margin:
//                                                               getMargin(top: 5),
//                                                           decoration: BoxDecoration(
//                                                               color: ColorConstant
//                                                                   .bluegray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapEmployeeProfile();
//                                             },
//                                             child: Container(
//                                                 width: size.width,
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisSize:
//                                                         MainAxisSize.min,
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "msg_employee_profil2"
//                                                                       .tr,
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20Black9004))),
//                                                       Container(
//                                                           height:
//                                                               getVerticalSize(
//                                                                   1.00),
//                                                           width: size.width,
//                                                           margin:
//                                                               getMargin(top: 5),
//                                                           decoration: BoxDecoration(
//                                                               color: ColorConstant
//                                                                   .bluegray400))
//                                                     ])))
//                                       ])))))
//                 ])));
//   }

//   onTapDasboardContainer() {
//     Get.toNamed(AppRoutes.dasboardContainerScreen);
//   }

//   onTapBookingstask() {
//     Get.toNamed(AppRoutes.bookingsTaskScreen);
//   }

//   onTapAddnewBookings() {
//     Get.toNamed(AppRoutes.addNewBookingsScreen);
//   }

//   onTapEmployee() {
//     Get.toNamed(AppRoutes.employeeScreen);
//   }

//   onTapEmployeeProfile() {
//     Get.toNamed(AppRoutes.employeeProfileScreen);
//   }
// }
