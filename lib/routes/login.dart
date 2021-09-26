import 'dart:math';

import 'package:aize/controllers/auth.dart';
import 'package:aize/utils/data.dart';
import 'package:aize/widgets/login.dart';
import 'package:aize/widgets/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Login extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Constant.primaryColor,
       body: SingleChildScrollView(
         child: Container(
           height: max(Get.width, Get.height),
           child: SafeArea(
             child: Center(
               child: Padding(
                 padding:  EdgeInsets.all(16.r),
                 child: Card(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(8.0),
                   ),
                   child: Padding(
                     padding: EdgeInsets.symmetric(vertical: 30.h,horizontal: 20.w),
                     child: Column(
                       mainAxisSize: MainAxisSize.min,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         FlutterToggleTab(
                             labels: ['Se connecter','S\'inscrire'],
                             isScroll: false,
                             initialIndex: 0,
                             width: 0.18.sw,
                             selectedBackgroundColors: [Constant.primaryColor],
                             unSelectedBackgroundColors: [Colors.white60],
                             selectedTextStyle: TextStyle(color: Colors.white),
                             unSelectedTextStyle: TextStyle(color: Constant.colorSecondary),
                             selectedLabelIndex: (index){
                                printInfo(info:index.toString());
                               controller.tabIndex.value = index;

                             }),
                         AnimatedSwitcher(
                           transitionBuilder: AnimatedSwitcher.defaultTransitionBuilder,
                           duration: const Duration(milliseconds: 500),
                           child: Obx(() {
                               return IndexedStack(
                                 index: ValueKey<int>(controller.tabIndex.value).value,
                                 children: [
                                   controller.tabIndex.value == 0 ? LoginWidget() : Container(),
                                   controller.tabIndex.value == 1 ? RegisterWidget() : Container(),
                                 ],
                               );
                             }
                           ),
                         ),
                       ],
                     ),

                   ),
                 ),
               ),
             ),
           ),
         ),
       ),
     );
  }

}