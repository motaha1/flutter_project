import 'package:final_grad_proj/helper/db_helper.dart';
import 'package:final_grad_proj/provider/auth_provider.dart';
import 'package:final_grad_proj/provider/provider.dart';
import 'package:final_grad_proj/provider/special.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:provider/provider.dart';

import 'core/app_export.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  initializeDateFormatting();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
            initialBinding: InitialBindings(),
            initialRoute: AppRoutes.signintest,
            getPages: AppRoutes.pages,
          );
        });
  }
}
