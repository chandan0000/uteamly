import 'package:get/get.dart';
import 'message_item_model.dart';

class MessageModel {
  RxList<MessageItemModel> messageItemList =
      RxList.filled(5, MessageItemModel());
}
