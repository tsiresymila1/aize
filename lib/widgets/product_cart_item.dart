import 'package:aize/routes/product.dart';
import 'package:aize/utils/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCartItem extends GetView {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(()=>Product());
      },
      child: Container(
        child: Stack(
          children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
                padding:  EdgeInsets.only(bottom: 12.h),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.r),
                    boxShadow: [
                      BoxShadow(color: Colors.grey.withOpacity(.3),
                        blurRadius: 2.0,
                        spreadRadius: 0.0,
                        offset: Offset(
                          1.5,
                          2.0,
                        ),)
                    ]
                ),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        width: 100.w,
                        child: Image.asset('assets/product2.png',height: 80.r,width: 80.r,),
                      ),
                      Flexible(
                          child: Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(top: 12.h),
                                    alignment: Alignment.centerLeft,
                                    child: Text('Gel main purification',style: TextStyle(color: Constant.colorSecondary,fontSize: 13.sp,fontWeight: FontWeight.w500),
                                    )
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 4.h),
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(FontAwesome.dollar,color: Colors.amber,size: 15),
                                        Text('  20000 Ar',style: TextStyle(fontSize: 13.sp),
                                        ),
                                      ],
                                    )
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 4.h),
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(FontAwesome.dollar,color: Colors.amber,size: 15),
                                        Icon(FontAwesome.dollar,color: Colors.amber,size: 15,),
                                        Text('  20000 Ar',style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )
                                ),
                                //
                              ],
                            ),
                          )
                      ),
                      Container(
                        height: 90.h,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(right: 12.w,top: 10.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 30.0,
                                width: 30.0,
                              child: FloatingActionButton(
                                  mini: true,
                                  onPressed: () {
                                  },
                                  child: new Icon(Icons.add, color: Colors.black,size: 15,),
                                  backgroundColor: Colors.white)
                            ),
                            Container(
                              child: Text('10	', style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600, color: Constant.colorPrimary),),
                            ),
                            Container(
                                height: 30.0,
                                width: 30.0,
                              child: FloatingActionButton(
                                mini: true,
                                  onPressed: () {
                                  },
                                  child: new Icon(Feather.minus, color: Colors.black,size: 15),
                                  backgroundColor: Colors.white)
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }

}