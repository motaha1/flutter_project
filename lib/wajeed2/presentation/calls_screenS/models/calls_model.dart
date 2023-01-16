import 'package:get/get.dart';
import '../calls_screenS.dart';
import 'calls_item_model.dart';

class CallsModel {
  RxList<CallsItemModel> callsItemList =
      RxList.filled(CallsScreenS.usercall1.length, CallsItemModel());
}
