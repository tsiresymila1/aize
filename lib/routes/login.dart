import 'dart:math';

import 'package:aize/controllers/login.dart';
import 'package:aize/routes/dashboard.dart';
import 'package:aize/utils/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:select_form_field/select_form_field.dart';

class Login extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Constant.colorPrimary,
       body: SingleChildScrollView(
         child: Container(
           height: max(Get.width, Get.height),
           child: SafeArea(
             child: Center(
               child: Padding(
                 padding:  EdgeInsets.all(16.r),
                 child: Card(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15.0),
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
                             selectedTextStyle: TextStyle(color: Colors.white),
                             unSelectedTextStyle: TextStyle(),
                             selectedLabelIndex: (index){
                                printInfo(info:index.toString());
                               controller.tabIndex.value = index;

                             }),
                         AnimatedSwitcher(
                           transitionBuilder: AnimatedSwitcher.defaultTransitionBuilder,
                           duration: const Duration(milliseconds: 500),
                           child: Obx(() {
                               return IndexedStack(
                                 index: controller.tabIndex.value,
                                 children: [
                                   Container(
                                     padding: EdgeInsets.only(top: 20.h),
                                     child: Column(mainAxisSize: MainAxisSize.min,
                                       children: [
                                          Container(
                                            margin: EdgeInsets.symmetric(vertical: 10.h),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                              Container(
                                                alignment:Alignment.centerLeft,
                                                padding: EdgeInsets.only(left: 10.w),
                                                child: Row(
                                                    children: [
                                                      Text('Fonction ',style: TextStyle(color: Constant.colorPrimary),textAlign: TextAlign.start,),
                                                      Text(' *',style: TextStyle(color: Colors.red),textAlign: TextAlign.start,),
                                                    ],
                                                ),
                                              ),
                                             Container(
                                               height: 42.h,
                                               child: DropdownButtonFormField<String>(
                                                 isExpanded: true,
                                                 decoration: InputDecoration(
                                                     contentPadding: EdgeInsets.only(top: 5.h,bottom:5.h,left: 10.w,right: 10.w),
                                                   enabledBorder: OutlineInputBorder(
                                                     borderRadius: BorderRadius.circular(20.r),
                                                     borderSide: BorderSide(
                                                       color: Colors.grey.shade300,
                                                     ),
                                                   ),
                                                   focusedBorder: OutlineInputBorder(
                                                       borderRadius: BorderRadius.circular(20.r),
                                                       borderSide: BorderSide(
                                                         color: Constant.colorPrimary,
                                                       )
                                                   ),
                                                   hintText: '-- Fonction --'
                                                 ),
                                                 icon: Icon(                // Add this
                                                   Icons.arrow_drop_down,  // Add this
                                                   color: Colors.blue,   // Add this
                                                 ),
                                                 items: <String>['A', 'B', 'C', 'D'].map((String value) {
                                                   return DropdownMenuItem<String>(
                                                     value: value,
                                                     child: new Text(value),
                                                   );
                                                 }).toList(),
                                                 onChanged: (_) {},
                                               )
                                             )
                                            ]),
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(vertical: 10.h),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Container(
                                                  alignment:Alignment.centerLeft,
                                                  padding: EdgeInsets.only(left: 10.w),
                                                  child: Row(
                                                    children: [
                                                      Text('Nom d\'utilisateur ',style: TextStyle(color: Constant.colorPrimary),textAlign: TextAlign.start,),
                                                      Text(' *',style: TextStyle(color: Colors.red),textAlign: TextAlign.start,),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: 42.h,
                                                  child: TextField(
                                                    style: TextStyle(
                                                      height: 2.0.h,
                                                      fontSize: 14
                                                    ),
                                                    decoration: InputDecoration(
                                                      contentPadding: EdgeInsets.only(top: 5.h,bottom:5.h,left: 10.w),
                                                      isDense:true,
                                                      hintText: 'Nom d\'utilisateur',
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(20.r),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey.shade300,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                          borderRadius: BorderRadius.circular(20.r),
                                                          borderSide: BorderSide(
                                                            color: Constant.colorPrimary,
                                                          )
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                         Container(
                                           margin: EdgeInsets.symmetric(vertical: 10.h),
                                           child: Column(
                                             mainAxisSize: MainAxisSize.min,
                                             children: [
                                               Container(
                                                 alignment:Alignment.centerLeft,
                                                 padding: EdgeInsets.only(left: 10.w),
                                                 child: Row(
                                                   children: [
                                                     Text('Mot de passe ',style: TextStyle(color: Constant.colorPrimary),textAlign: TextAlign.start,),
                                                     Text(' *',style: TextStyle(color: Colors.red),textAlign: TextAlign.start,),
                                                   ],
                                                 ),
                                               ),
                                               Container(
                                                 height: 42.h,
                                                 child: TextField(
                                                   style: TextStyle(
                                                       height: 2.0.h,
                                                       fontSize: 14
                                                   ),
                                                   obscureText: controller.isObscure.value,
                                                   decoration: InputDecoration(
                                                     isDense: true,
                                                     isCollapsed: true,
                                                     suffixIcon:  IconButton(icon: Icon(controller.isObscure.value ? Icons.visibility_off :Icons.visibility,size: 20,),onPressed: (){
                                                        controller.isObscure.value = ! controller.isObscure.value;
                                                     },),
                                                     hintText: 'Mot de passe',
                                                     contentPadding: EdgeInsets.only(top: 5.h,bottom:5.h,left: 10.w),
                                                     enabledBorder: OutlineInputBorder(
                                                       borderRadius: BorderRadius.circular(20.r),
                                                       borderSide: BorderSide(
                                                         color: Colors.grey.shade300,
                                                       ),
                                                     ),
                                                     focusedBorder: OutlineInputBorder(
                                                         borderRadius: BorderRadius.circular(20.r),
                                                         borderSide: BorderSide(
                                                           color: Constant.colorPrimary,
                                                         )
                                                     ),
                                                   ),
                                                 ),
                                               ),
                                             ],
                                           ),
                                         ),
                                         Container(
                                           padding: EdgeInsets.only(top: 20.h),
                                           child: ElevatedButton(
                                             style: ButtonStyle(
                                                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                     RoundedRectangleBorder(
                                                         borderRadius: BorderRadius.circular(25.r),
                                                         side: BorderSide(color: Constant.colorPrimary)
                                                     )
                                                 )
                                             ),
                                             onPressed: ()=>{
                                               Get.to(()=>Dashboard())
                                             },
                                             child: Container(
                                               margin: EdgeInsets.all(10.r),
                                               child: Row(
                                                 mainAxisAlignment: MainAxisAlignment.center,
                                                 children: [
                                                   Text('Connecter',style: TextStyle(color: Colors.white),),
                                                   Icon(Icons.arrow_forward,color: Colors.white,)
                                                 ],
                                               ),
                                             ),
                                           ),
                                         )
                                       ],
                                     ),
                                   ),
                                   Container()
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