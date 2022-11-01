import 'package:get/get.dart';
import 'listpopbugfix_item_model.dart';
import 'listpopbugfix_three_item_model.dart';

class BookingsTaskModel {
  RxList<ListpopbugfixItemModel> listpopbugfixItemList =
      RxList.filled(3, ListpopbugfixItemModel());

  RxList<ListpopbugfixThreeItemModel> listpopbugfixThreeItemList =
      RxList.filled(4, ListpopbugfixThreeItemModel());
}
