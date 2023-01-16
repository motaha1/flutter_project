import 'package:get/get.dart';
import '../calls_screen.dart';
import 'calls_item_model.dart';

class CallsModel {
  RxList<CallsItemModel> callsItemList = RxList.filled(CallsScreen.usercall1.length, CallsItemModel());
}
