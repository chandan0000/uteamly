import 'package:get/get.dart';
import 'listpopbugfix1_item_model.dart';
import 'listpopbugfix_three1_item_model.dart';

class AddNewBookingsModel {
  RxList<Listpopbugfix1ItemModel> listpopbugfix1ItemList =
      RxList.filled(3, Listpopbugfix1ItemModel());

  RxList<ListpopbugfixThree1ItemModel> listpopbugfixThree1ItemList =
      RxList.filled(4, ListpopbugfixThree1ItemModel());
}
