import 'package:get/get.dart';
import 'document_item_model.dart';

class DocumentModel {
  RxList<DocumentItemModel> documentItemList =
      RxList.filled(4, DocumentItemModel());
}
