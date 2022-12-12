import 'package:flutter/material.dart';
import 'package:final_grad_proj/gsk_2022/another/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({this.onChanged});

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgGroup,
      type: BottomBarEnum.Group,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGroupBluegray400,
      type: BottomBarEnum.Groupbluegray400,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGroupBluegray40020x26,
      type: BottomBarEnum.Groupbluegray40020x26,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGroupBluegray40019x21,
      type: BottomBarEnum.Groupbluegray40019x21,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          color: ColorConstant.whiteA700,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              getHorizontalSize(
                20.00,
              ),
            ),
            topRight: Radius.circular(
              getHorizontalSize(
                20.00,
              ),
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: ColorConstant.black9003f,
              spreadRadius: getHorizontalSize(
                2.00,
              ),
              blurRadius: getHorizontalSize(
                2.00,
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
              icon: CommonImageView(
                svgPath: bottomMenuList[index].icon,
                height: getVerticalSize(
                  20.00,
                ),
                width: getHorizontalSize(
                  22.00,
                ),
                color: ColorConstant.bluegray400,
              ),
              activeIcon: CommonImageView(
                svgPath: bottomMenuList[index].icon,
                height: getSize(
                  48.00,
                ),
                width: getSize(
                  48.00,
                ),
                color: ColorConstant.cyan601,
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
  Group,
  Groupbluegray400,
  Groupbluegray40020x26,
  Groupbluegray40019x21,
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
              fontSize: 18,
            ),
          ),
        ],
      ),
    ),
  );
}
