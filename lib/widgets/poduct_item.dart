import 'package:aize/routes/product.dart';
import 'package:aize/utils/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductItem extends GetView {
  final data ;

  ProductItem({this.data});
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
                                      Icon(Feather.star,color: Colors.orange,),
                                      Text('  Categorie A',style: TextStyle(fontSize: 13.sp),
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
                                      Icon(Feather.dollar_sign,color: Colors.amber,),
                                      Text('  20000 Ar',style: TextStyle(fontSize: 13.sp),
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
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              child: Image.asset("assets/warehouse.png",width: 50.r, height: 50.r,),
                            ),
                            Container(
                              child: Text('DEPOT-PROD	', style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w400, color: Constant.colorPrimary),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w,vertical: 5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.h,vertical: 6.h),
                    decoration: BoxDecoration(
                        color: Constant.primaryColor,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15.r),bottomRight: Radius.circular(15.r))
                    ),
                    child: Text('2010',style: TextStyle(color: Colors.white,fontSize: 13),),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}