import 'dart:developer';
//import 'dart:js';

import 'package:final_grad_proj/data_repositories/dio_helper.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/time_picker/doctor_info.dart';
import 'package:final_grad_proj/gsk_2022/presentation/doctor_appointment_screen/booking.dart';
import 'package:final_grad_proj/helper/db_helper.dart';
import 'package:final_grad_proj/mustafa/presentation/home_page/home_page.dart';
import 'package:final_grad_proj/presentation/menu_screen/menu_screen.dart';
import 'package:final_grad_proj/presentation/splash_screen/splash_screen.dart';
import 'package:final_grad_proj/provider/auth_provider.dart';
import 'package:final_grad_proj/provider/provider.dart';
import 'package:final_grad_proj/provider/special.dart';
import 'package:final_grad_proj/screens_test/main_screen.dart';
import 'package:final_grad_proj/screens_test/sign_in_screen.dart';
import 'package:final_grad_proj/screens_test/splash_test.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:provider/provider.dart';

import 'core/app_export.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'wajeed/presentation/login_screen/login_screen.dart';

void main() async {
  initializeDateFormatting();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // final fcmToken = await FirebaseMessaging.instance.getToken();

  // print(fcmToken);
  // log(fcmToken!);

  FirebaseMessaging.onMessage.listen((event) async {
    print(event.data.toString());
    // print('2666666666666666');
    // log('26666666666666');
    Get.snackbar(event.notification!.title.toString(),
        event.notification!.body.toString());
    await DioHelper.diohelper.savenotify(
        "7", 
        event.notification!.title.toString(),
        event.notification!.body.toString());
  });

  //await DbHelper.dbHelper.initDatabase();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiProvider(providers: [
      ChangeNotifierProvider<AuthProvider>(
        create: (context) {
          return AuthProvider();
        },
      ),
      ChangeNotifierProvider<TodoClass>(
        create: (context) {
          return TodoClass();
        },
      ),
      ChangeNotifierProvider<Special>(
        create: (context) {
          return Special();
        },
      ),
    ], child: AppInit());
  }
}

class AppInit extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            translations: AppLocalization(),
            locale: Get.deviceLocale, //for setting localization strings
            fallbackLocale: Locale('en', 'US'),
            title: 'final_grad_proj',
            // initialBinding: InitialBindings(),
            // initialRoute: AppRoutes.signintest,
            home: MyWidgetLogin(),

            builder: EasyLoading.init(),

            getPages: AppRoutes.pages,
          );
        });
  }
}
