import 'package:final_grad_proj/mustafa/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({this.onChanged});

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgGroupIndigoA400,
      type: BottomBarEnum.ImggroupindigoA400,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGroupBluegray400,
      type: BottomBarEnum.Imggroupbluegray400,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGroupBluegray40018X26,
      type: BottomBarEnum.Imggroupbluegray40018X26,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGroupBluegray40018X21,
      type: BottomBarEnum.Imggroupbluegray40018X21,
    )
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
              spreadRadius: 2.00.h,
              blurRadius: 2.00.r,
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
              icon: CommonImageView(
                svgPath: bottomMenuList[index].icon,
                height: 18.00.h,
                width: 22.00.w,
                color: ColorConstant.bluegray400,
              ),
              activeIcon: CommonImageView(
                svgPath: bottomMenuList[index].icon,
                height: 29.00.h,
                width: 20.00.w,
                color: ColorConstant.indigoA400,
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged!(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  ImggroupindigoA400,
  Imggroupbluegray400,
  Imggroupbluegray40018X26,
  Imggroupbluegray40018X21,
}

class BottomMenuModel {
  BottomMenuModel({required this.icon, required this.type});

  String icon;

  BottomBarEnum type;
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
              fontSize: 18.sp,
            ),
          ),
        ],
      ),
    ),
  );
}
