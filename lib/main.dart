import 'package:aize/controllers/auth.dart';
import 'package:aize/controllers/dashboard.dart';
import 'package:aize/controllers/login.dart';
import 'package:aize/controllers/navigation.dart';
import 'package:aize/controllers/product.dart';
import 'package:aize/controllers/register.dart';
import 'package:aize/controllers/search.dart';
import 'package:aize/controllers/splash.dart';
import 'package:aize/controllers/warehouse.dart';
import 'package:aize/utils/data.dart';
import 'package:aize/routes/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  Get.put(SplashController(),permanent: false);
  Get.put(AuthController(),permanent: false);
  Get.put(LoginController(),permanent: false);
  Get.put(RegisterController(),permanent: false);
  Get.put(DashBoardController(),permanent: true);
  Get.put(SearchController(),permanent: false);
  Get.put(BottomNavigationController(),permanent: false);
  Get.put(WarehouseControler());
  Get.put(ProductController());
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
            transitionDuration: Duration(milliseconds: 100),
            theme: ThemeData(
              primarySwatch: Colors.blueGrey,
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



