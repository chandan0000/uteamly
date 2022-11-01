import 'package:get/get.dart';
import 'employee_item_model.dart';

class EmployeeModel {
  RxList<EmployeeItemModel> employeeItemList =
      RxList.filled(3, EmployeeItemModel());
}
