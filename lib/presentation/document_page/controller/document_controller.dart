import '/core/app_export.dart';
import 'package:uteamly/presentation/document_page/models/document_model.dart';

class DocumentController extends GetxController {
  DocumentController(this.documentModelObj);

  Rx<DocumentModel> documentModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
