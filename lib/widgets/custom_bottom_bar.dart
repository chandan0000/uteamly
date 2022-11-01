import 'package:flutter/material.dart';
import 'package:uteamly/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({this.onChanged});

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgDashboard5,
      title: "lbl_dashboard".tr,
      type: BottomBarEnum.Dashboard,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgChecklist,
      title: "lbl_activities".tr,
      type: BottomBarEnum.Activities,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgVideolesson1,
      title: "lbl_tutorials".tr,
      type: BottomBarEnum.Tutorials,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgEmployee1,
      title: "lbl_employee".tr,
      type: BottomBarEnum.Employee,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgHelpdesk1,
      title: "lbl_help_center".tr,
      type: BottomBarEnum.Helpcenter,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGoogledocs1,
      title: "lbl_document".tr,
      type: BottomBarEnum.Document,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgEmail51,
      title: "lbl_message".tr,
      type: BottomBarEnum.Message,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgTodolist1,
      title: "lbl_tasks".tr,
      type: BottomBarEnum.Tasks,
      isPng: true,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          color: ColorConstant.cyan901,
          boxShadow: [
            BoxShadow(
              color: ColorConstant.gray9000f,
              spreadRadius: getHorizontalSize(
                2.00,
              ),
              blurRadius: getHorizontalSize(
                2.00,
              ),
              offset: Offset(
                10,
                24,
              ),
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CommonImageView(
                svgPath: bottomMenuList[index].isPng == true
                    ? null
                    : bottomMenuList[index].icon,
                imagePath: bottomMenuList[index].isPng == true
                    ? bottomMenuList[index].icon
                    : null,
                height: getSize(
                  20.00,
                ),
                width: getSize(
                  20.00,
                ),
              ),
              activeIcon: CommonImageView(
                svgPath: bottomMenuList[index].isPng == true
                    ? null
                    : bottomMenuList[index].icon,
                imagePath: bottomMenuList[index].isPng == true
                    ? bottomMenuList[index].icon
                    : null,
                height: getSize(
                  20.00,
                ),
                width: getSize(
                  20.00,
                ),
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged!(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Dashboard,
  Activities,
  Tutorials,
  Employee,
  Helpcenter,
  Document,
  Message,
  Tasks,
}

class BottomMenuModel {
  BottomMenuModel(
      {required this.icon, this.title, required this.type, this.isPng = false});

  String icon;

  String? title;

  BottomBarEnum type;

  bool isPng;
}

///Set default widget when screen is not configured with bottom menu
Widget getDefaultWidget() {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.all(10),
    child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Please replace the respective Widget here',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    ),
  );
}
