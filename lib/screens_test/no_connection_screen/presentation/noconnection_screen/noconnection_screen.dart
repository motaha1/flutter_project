import 'package:final_grad_proj/screens_test/no_connection_screen/core/app_export.dart';
import 'package:final_grad_proj/screens_test/no_connection_screen/core/utils/color_constant.dart';
import 'package:final_grad_proj/screens_test/no_connection_screen/widgets/custom_button.dart';
import 'package:final_grad_proj/screens_test/splash_test.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';


class NoconnectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray400,
        body: Container(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  506.00,
                ),
                width: size.width,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: getVerticalSize(
                          252.00,
                        ),
                        width: size.width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(
                              -0.19,
                              0.75,
                            ),
                            end: Alignment(
                              0.84,
                              1.02,
                            ),
                            colors: [
                              ColorConstant.gray40001,
                              ColorConstant.gray500,
                            ],
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgPicture,
                      height: getVerticalSize(
                        146.00,
                      ),
                      width: getHorizontalSize(
                        230.00,
                      ),
                      alignment: Alignment.topLeft,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgPlant,
                      height: getVerticalSize(
                        351.00,
                      ),
                      width: getHorizontalSize(
                        106.00,
                      ),
                      alignment: Alignment.topRight,
                      margin: getMargin(
                        top: 17,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgRouter,
                      height: getVerticalSize(
                        343.00,
                      ),
                      width: getHorizontalSize(
                        324.00,
                      ),
                      alignment: Alignment.bottomRight,
                      margin: getMargin(
                        bottom: 36,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: getPadding(
                          left: 74,
                          right: 73,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Router Offline",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.gray800,
                                fontSize: getFontSize(
                                  26,
                                ),
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                226.00,
                              ),
                              margin: getMargin(
                                top: 9,
                              ),
                              child: Text(
                                "No internet connection, please try\nrestarting your router...",
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: ColorConstant.gray80099,
                                  fontSize: getFontSize(
                                    15,
                                  ),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  height: 1.67,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                height: 44,
                width: 122,
                text: "Retry".toUpperCase(),
                margin: getMargin(
                  top: 38,
                  bottom: 5,

                ),
                onTap: () {
                   Get.to(splash_test());
                },

              
              ),
            ],
          ),
        ),
      ),
    );
  }
}
