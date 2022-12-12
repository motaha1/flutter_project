import 'package:final_grad_proj/gsk_2022/another/presentation/two_screen/two_screen.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/two_screen/binding/two_binding.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/three_screen/three_screen.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/three_screen/binding/three_binding.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/thank_you_screen/thank_you_screen.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/thank_you_screen/binding/thank_you_binding.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String twoScreen = '/two_screen';

  static String threeScreen = '/three_screen';

  static String thankYouScreen = '/thank_you_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: twoScreen,
      page: () => TwoScreen(),
      bindings: [
        TwoBinding(),
      ],
    ),
    GetPage(
      name: threeScreen,
      page: () => ThreeScreen(),
      bindings: [
        ThreeBinding(),
      ],
    ),
    GetPage(
      name: thankYouScreen,
      page: () => ThankYouScreen(),
      bindings: [
        ThankYouBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => TwoScreen(),
      bindings: [
        TwoBinding(),
      ],
    )
  ];
}
