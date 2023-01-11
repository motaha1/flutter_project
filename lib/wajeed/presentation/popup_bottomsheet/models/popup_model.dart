import 'package:get/get.dart';
import '../widgets/popup_item_widget.dart';
import 'popup_item_model.dart';

class PopupModel {
  RxList<PopupItemModel> popupItemList =
      RxList.filled(PopupItemWidget.shareContact.length, PopupItemModel());
}
