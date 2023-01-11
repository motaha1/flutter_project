import 'package:get/get.dart';
import 'listone_three_item_model.dart';
import 'listone_eleven_item_model.dart';
import 'package:final_grad_proj/wajeed/data/models/selectionPopupModel/selection_popup_model.dart';
import 'listdw_item_model.dart';

class SpecialistScreenModel {
  RxList<ListoneThreeItemModel> listoneThreeItemList =
      RxList.filled(2, ListoneThreeItemModel());

  RxList<ListoneElevenItemModel> listoneElevenItemList =
      RxList.filled(2, ListoneElevenItemModel());

  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "test",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "test1",
    ),
    SelectionPopupModel(
      id: 3,
      title: "test2",
    )
  ].obs;

  RxList<ListdwItemModel> listdwItemList = RxList.filled(4, ListdwItemModel());
}
