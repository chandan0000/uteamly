import 'package:get/get.dart';
import 'dasboard_item_model.dart';

class DasboardModel {
  RxList<DasboardItemModel> dasboardItemList =
      RxList.filled(2, DasboardItemModel());
}
