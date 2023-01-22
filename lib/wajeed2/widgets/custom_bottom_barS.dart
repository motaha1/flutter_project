import 'package:final_grad_proj/core/app_export.dart';
import 'package:final_grad_proj/provider/auth_provider.dart';
import 'package:final_grad_proj/wajeed2/presentation/Specialist_Schedule/Specialist_Schedule.dart';
import 'package:final_grad_proj/wajeed2/presentation/chat_page/chat_page.dart';
import 'package:final_grad_proj/wajeed2/presentation/specialist_screen_page/specialist_screen_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({this.onChanged});

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: IconButton(
          icon: Icon(
            Icons.home,
            color: ColorConstant.indigoA400, //bluegray400
            size: 25,
          ),
          onPressed: () {
      Get.to(SpecialistScreenPage()) ; 
          },
        ),
        type: BottomBarEnum.ImggroupindigoA400,
        titel: "Home"),
    BottomMenuModel(
        icon: IconButton(
          icon: Icon(
            Icons.calendar_month_outlined,
            color: ColorConstant.indigoA400,
            size: 25,
          ),
          onPressed: () {
         Get.to(SpecialistSchedule()) ; 
          },
        ),
        type: BottomBarEnum.Groupindigoa40029x20,
        titel: "Calender"),
    BottomMenuModel(
        icon: IconButton(
          icon: Icon(
            Icons.comment_bank,
            color: ColorConstant.indigoA400,
            size: 25,
          ),
          onPressed: () {
       
          },
        ),
        type: BottomBarEnum.Imggroupbluegray400,
        titel: "Comments"),
    BottomMenuModel(
        icon: IconButton(
          icon: Icon(
            Icons.chat,
            color: ColorConstant.indigoA400,
            size: 25,
          ),
          onPressed: () async{

                              EasyLoading.show(status: 'loading....');

//await Provider.of<AuthProvider>(context , listen: false).how_i_am_talk_api();
                     // await Provider.o.how_i_am_talk_api();
                      EasyLoading.dismiss();

                      // Get.to(ThreeScreen_new('1'));
                      Get.to(ChatPage());
       
          },
        ),
        type: BottomBarEnum.Imggroupbluegray40018X26,
        titel: "Chat"),
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          color: ColorConstant.indigo50,
          boxShadow: [
            BoxShadow(
              color: ColorConstant.black9003f,
              spreadRadius: getHorizontalSize(
                10,
              ),
              blurRadius: getHorizontalSize(
                10,
              ),
              offset: Offset(
                0,
                4,
              ),
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: bottomMenuList[index].icon,
              activeIcon: bottomMenuList[index].icon,
              label: bottomMenuList[index].titel,
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged!(
              bottomMenuList[index].type,
            );
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Groupindigoa40029x20,
  ImggroupindigoA400,
  Imggroupbluegray400,
  Imggroupbluegray40018X26,
  Imggroupbluegray40018X21,
  Groupbluegray40124x24,
  Groupbluegray40118x26,
  Groupbluegray40118x21,
}

class BottomMenuModel {
  BottomMenuModel(
      {required this.icon, required this.type, required this.titel});

  IconButton icon;

  BottomBarEnum type;
  String titel;
}

///Set default widget when screen is not configured with bottom menu
Widget getDefaultWidget() {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.all(10),
    child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Please replace the respective Widget here',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    ),
  );
}
