import 'package:aize/controllers/warehouse.dart';
import 'package:aize/utils/data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddWarehouse extends GetView<WarehouseControler> {
  final String title ;

  AddWarehouse({this.title = ""});
  @override
  Widget build(BuildContext context) {
     return Container(
       padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 2.h),
       decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(4.r)
       ),
       child: Column(
         mainAxisSize: MainAxisSize.min,
         children: [
           Container(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text( this.title,style: TextStyle(fontSize: 18),),
                 IconButton(onPressed: (){
                   Get.back();
                 }, icon: Icon(Icons.close,color: Colors.red,))
               ],
             ),
           ),
           Container(
             margin: EdgeInsets.only(top: 8.h),
             height: 42.h,
             child: TextField(
               controller: controller.refC,
               style: TextStyle(
                   height: 2.0.h,
                   fontSize: 14
               ),
               decoration: InputDecoration(
                 isDense: true,
                 isCollapsed: true,
                 hintText: 'REF',
                 contentPadding: EdgeInsets.only(top: 5.h,bottom:5.h,left: 10.w),
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(4.r),
                   borderSide: BorderSide(
                     color: Colors.grey.shade300,
                   ),
                 ),
                 focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(4.r),
                     borderSide: BorderSide(
                       color: Constant.colorPrimary,
                     )
                 ),
               ),
             ),
           ),
           Container(
             margin: EdgeInsets.only(top: 16.h),
             height: 42.h,
             child: TextField(
               controller: controller.lieuC,
               style: TextStyle(
                   height: 2.0.h,
                   fontSize: 14
               ),
               decoration: InputDecoration(
                 isDense: true,
                 isCollapsed: true,
                 hintText: 'Lieu',
                 contentPadding: EdgeInsets.only(top: 5.h,bottom:5.h,left: 10.w),
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(4.r),
                   borderSide: BorderSide(
                     color: Colors.grey.shade300,
                   ),
                 ),
                 focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(4.r),
                     borderSide: BorderSide(
                       color: Constant.colorPrimary,
                     )
                 ),
               ),
             ),
           ),
           Container(
             margin: EdgeInsets.only(top: 16.h),
             height: 42.h,
             child: TextField(
               controller: controller.addressC,
               style: TextStyle(
                   height: 2.0.h,
                   fontSize: 14
               ),
               decoration: InputDecoration(
                 isDense: true,
                 isCollapsed: true,
                 hintText: 'Adresse',
                 contentPadding: EdgeInsets.only(top: 5.h,bottom:5.h,left: 10.w),
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(4.r),
                   borderSide: BorderSide(
                     color: Colors.grey.shade300,
                   ),
                 ),
                 focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(4.r),
                     borderSide: BorderSide(
                       color: Constant.colorPrimary,
                     )
                 ),
               ),
             ),
           ),
         ],
       ),
     );
  }

}