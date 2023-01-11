import 'package:get/get.dart';
import 'calls_item_model.dart';

class CallsModel {
  RxList<CallsItemModel> callsItemList = RxList.filled(6, CallsItemModel());
}
