import 'package:aize/routes/delivery_details.dart';
import 'package:aize/utils/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:steps_indicator/steps_indicator.dart';


class DeliveryItem extends GetView {

  final bool isSalling;

  DeliveryItem({this.isSalling: true});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(()=> DeliveryDetails());
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12.w,vertical: 10.h),
        height: 200.h,
        alignment: Alignment.topCenter,
        padding:  EdgeInsets.all(8.r),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.r),
            boxShadow: [
              BoxShadow(color: Colors.grey.withOpacity(.2),
                blurRadius: 2.0,
                spreadRadius: 0.0,
                offset: Offset(
                  1.5,
                  2.0,
                ),)
            ]
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(!this.isSalling ? "assets/hista.png" : "assets/salling.png",width: 35,height: 35,),
                  Container(
                    padding: EdgeInsets.only(left:8.w),
                    child: Text("9784585 (50)",style:TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold,color: Constant.colorPrimary)),
                  ),
                  Container(
                    child: PopupMenuButton(
                      icon: Icon(Feather.more_horizontal),
                      itemBuilder: (context) {
                        return [
                          PopupMenuItem(
                            height:40.h,
                            padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 0.h),
                            value: 'view',
                            child: ListTile(
                                leading: Icon(EvilIcons.eye,color: Colors.blue,),
                                title:  Text('Voir',style: TextStyle(fontSize: 13.sp),)
                            ),
                          ),
                          PopupMenuItem(
                            height:40.h,
                            padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 0.h),
                            value: 'edit',
                            child: ListTile(
                              leading: Icon(EvilIcons.trash,color: Colors.red,),
                              title:  Text('Modifier',style: TextStyle(fontSize: 13.sp),)
                            ),
                          ),
                          PopupMenuItem(
                              height:40.h,
                            padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 0.h),
                            value: 'delete',
                            child: ListTile(
                                leading: Icon(EvilIcons.pencil,color: Colors.blue,),
                                title:  Text('Supprimer',style: TextStyle(fontSize: 13.sp),)
                            )
                          ),
                          PopupMenuItem(
                              height:40.h,
                              padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 0.h),
                              value: 'status',
                              child: ListTile(
                                  leading: Icon(EvilIcons.spinner,color: Colors.teal,),
                                  title:  Text('Status',style: TextStyle(fontSize: 13.sp),)
                              )
                          )
                        ];
                      },
                      onSelected: (String value){
                        switch(value){
                          case "view" :
                            Get.to(()=>DeliveryDetails());
                            break;
                          case "edit" :
                            break;
                          case "delete":
                            break;
                          case "status":
                            break;
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.only(left:8.w),
                    child:  Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(EvilIcons.clock,color: Colors.green,),
                        Text("  12-09-15",style:TextStyle(fontSize: 13.sp, color: Constant.colorPrimary)),
                      ],
                    )
                  ),
                  Container(
                    padding: EdgeInsets.only(left:8.w),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(EvilIcons.clock,color: Colors.red,),
                        Text("  12-09-15",style:TextStyle(fontSize: 13.sp, color: Constant.colorPrimary)),
                      ],
                    )
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              decoration: BoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(EvilIcons.cart,color: Constant.primaryColor,),
                  Container(
                    padding: EdgeInsets.only(left:8.w),
                    child: Text("Kanto Fitiavana",style:TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500,color: Color(0xf6217fd3))),
                  ),
                ],
              ),
            ),
            Container(
              child: StepsIndicator (
                selectedStep: 2,
                nbSteps: 3,
                selectedStepColorOut: Colors.white,
                selectedStepColorIn: Colors.white,
                doneStepColor: Color(0xba217fd3),
                doneLineColor: Color(0xba217fd3),
                undoneLineColor: Colors.amber,
                isHorizontal: true,
                // lineLength: 60,
                doneStepSize: 30,
                unselectedStepSize: 10,
                selectedStepSize: 14,
                selectedStepBorderSize: 10,
                doneLineThickness: 2,
                undoneLineThickness: 4,
                doneStepWidget: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xba217fd3),
                  ),
                  child: Icon(Icons.check,color: Colors.white,size: 18,),
                ), // Custom Widget
                unselectedStepWidget:Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.amber,
                  ),
                  child: Icon(EvilIcons.spinner_2,color: Colors.white,),
                ), // Custom Widget
                selectedStepWidget: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.amber,
                  ),
                  child: Icon(EvilIcons.spinner_2,color: Colors.white,size: 18),
                ), // Custom Widget
                lineLengthCustomStep: [
                  StepsIndicatorCustomLine(nbStep: 1, length: 100.w),
                  StepsIndicatorCustomLine(nbStep: 2, length: 100.w),
                  StepsIndicatorCustomLine(nbStep: 3, length: 100.w)
                ],
                enableLineAnimation: true,
                enableStepAnimation: true,
              )
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              decoration: BoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Feather.truck,color: Constant.colorPrimary,),
                  Container(
                    padding: EdgeInsets.only(left:8.w),
                    child: Text("Jean jack",style:TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400,color:  Constant.colorPrimary,)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}