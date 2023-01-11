import 'package:get/get.dart';
import 'comments_item_model.dart';

class CommentsModel {
  RxList<CommentsItemModel> commentsItemList =
      RxList.filled(3, CommentsItemModel());
}
