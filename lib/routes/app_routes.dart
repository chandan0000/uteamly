import 'package:uteamly/presentation/dasboard_container_screen/dasboard_container_screen.dart';
import 'package:uteamly/presentation/dasboard_container_screen/binding/dasboard_container_binding.dart';
import 'package:uteamly/presentation/bookings_task_screen/bookings_task_screen.dart';
import 'package:uteamly/presentation/bookings_task_screen/binding/bookings_task_binding.dart';
import 'package:uteamly/presentation/add_new_bookings_screen/add_new_bookings_screen.dart';
import 'package:uteamly/presentation/add_new_bookings_screen/binding/add_new_bookings_binding.dart';
import 'package:uteamly/presentation/employee_screen/employee_screen.dart';
import 'package:uteamly/presentation/employee_screen/binding/employee_binding.dart';
import 'package:uteamly/presentation/employee_profile_screen/employee_profile_screen.dart';
import 'package:uteamly/presentation/employee_profile_screen/binding/employee_profile_binding.dart';
import 'package:uteamly/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:uteamly/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

import '../presentation/dasboard_page/dasboard_page.dart';
import '../presentation/document_page/document_page.dart';
import '../presentation/message_page/message_page.dart';

class AppRoutes {
  static String dasboardContainerScreen = '/dasboard_container_screen';

  static String bookingsTaskScreen = '/bookings_task_screen';

  static String addNewBookingsScreen = '/add_new_bookings_screen';

  static String employeeScreen = '/employee_screen';

  static String employeeProfileScreen = '/employee_profile_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/dasboard_container_screen';

  static List<GetPage> pages = [
    GetPage(
      name: dasboardContainerScreen,
      page: () => BookingsTaskScreen(),
      bindings: [
        DasboardContainerBinding(),
      ],
    ),
    GetPage(
      name: bookingsTaskScreen,
      page: () => BookingsTaskScreen(),
      bindings: [
        BookingsTaskBinding(),
      ],
    ),
    GetPage(
      name: addNewBookingsScreen,
      page: () => AddNewBookingsScreen(),
      bindings: [
        AddNewBookingsBinding(),
      ],
    ),
    GetPage(
      name: employeeScreen,
      page: () => EmployeeScreen(),
      bindings: [
        EmployeeBinding(),
      ],
    ),
    GetPage(
      name: employeeProfileScreen,
      page: () => EmployeeProfileScreen(),
      bindings: [
        EmployeeProfileBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => DasboardContainerScreen(),
      bindings: [
        DasboardContainerBinding(),
      ],
    )
  ];
}
