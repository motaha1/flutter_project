import 'package:final_grad_proj/gsk_2022/presentation/doctor_details_screen/doctor_details_screen.dart';
import 'package:final_grad_proj/gsk_2022/presentation/doctor_details_screen/binding/doctor_details_binding.dart';
import 'package:final_grad_proj/gsk_2022/presentation/doctor_appointment_screen/doctor_appointment_screen.dart';
import 'package:final_grad_proj/gsk_2022/presentation/doctor_appointment_screen/binding/doctor_appointment_binding.dart';
import 'package:final_grad_proj/gsk_2022/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:final_grad_proj/gsk_2022/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/two_screen/two_screen.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/two_screen/binding/two_binding.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/three_screen/three_screen.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/three_screen/binding/three_binding.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/thank_you_screen/thank_you_screen.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/thank_you_screen/binding/thank_you_binding.dart';

import 'package:get/get.dart';

class AppRoutes {
  static String doctorDetailsScreen = '/doctor_details_screen';

  static String doctorAppointmentScreen = '/doctor_appointment_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';
  static String threeScreen = '/three_screen';
  static String thankYouScreen = '/thank_you_screen';

  static List<GetPage> pages = [
    GetPage(
      name: doctorDetailsScreen,
      page: () => DoctorDetailsScreen(),
      bindings: [
        DoctorDetailsBinding(),
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
      name: doctorAppointmentScreen,
      page: () => DoctorAppointmentScreen(),
      bindings: [
        DoctorAppointmentBinding(),
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
      page: () => DoctorDetailsScreen(),
      bindings: [
        DoctorDetailsBinding(),
      ],
    )
  ];
}
