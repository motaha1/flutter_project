// import 'controller/specialist_screen_container_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:final_grad_proj/wajeed/core/app_export.dart';
// import 'package:final_grad_proj/wajeed/presentation/chat_page/chat_page.dart';
// import 'package:final_grad_proj/wajeed/presentation/comments_page/comments_page.dart';
// import 'package:final_grad_proj/wajeed/presentation/schedule_screen_page/schedule_screen_page.dart';
// import 'package:final_grad_proj/wajeed/presentation/specialist_screen_page/specialist_screen_page.dart';
// import 'package:final_grad_proj/wajeed/widgets/custom_bottom_bar.dart';

// class SpecialistScreenContainerScreen
//     extends GetWidget<SpecialistScreenContainerController> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             backgroundColor: ColorConstant.whiteA700,
//             body: Obx(() => getCurrentWidget(controller.type.value)),
//             bottomNavigationBar:
//                 CustomBottomBar(onChanged: (BottomBarEnum type) {
//               controller.type.value = type;
//             })));
//   }

//   Widget getCurrentWidget(BottomBarEnum type) {
//     switch (type) {
//       case BottomBarEnum.Groupindigoa40029x20:
//         return SpecialistScreenPage();
//       case BottomBarEnum.Groupbluegray40124x24:
//         return ScheduleScreenPage();
//       case BottomBarEnum.Groupbluegray40118x26:
//         return CommentsPage();
//       case BottomBarEnum.Groupbluegray40118x21:
//         return ChatPage();
//       default:
//         return getDefaultWidget();
//     }
//   }
// }
