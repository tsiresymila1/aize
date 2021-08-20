import 'package:aize/controllers/dashboard.dart';
import 'package:aize/controllers/login.dart';
import 'package:aize/controllers/search.dart';
import 'package:aize/controllers/splash.dart';
import 'package:aize/utils/data.dart';
import 'package:aize/routes/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  Get.put(SplashController(),permanent: false);
  Get.put(LoginController(),permanent: false);
  Get.put(DashBoardController(),permanent: true);
  Get.put(SearchController(),permanent: true);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return
      ScreenUtilInit(
        designSize: Size(392, 825),
          builder: () =>GetMaterialApp(
            title: 'Aizé',
            debugShowCheckedModeBanner: false,
            defaultTransition: Transition.cupertino,
            theme: ThemeData(
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
              backgroundColor: Constant.colorPrimary,
              textTheme: ThemeData.light().textTheme.apply(
                fontFamily: 'Poppins',
              )
            ),
            home: SplashScreen(),
          )
      );
  }
}



