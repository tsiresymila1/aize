import 'package:aize/routes/product.dart';
import 'package:aize/utils/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SaleItem extends GetView {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(()=>Product());
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
        padding:  EdgeInsets.only(bottom: 12.h),
        decoration: BoxDecoration(
            color: Constant.colorPrimaryAccent,
            borderRadius: BorderRadius.circular(12.r)
        ),
        child: ListTile(
          title: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(alignment: Alignment.centerLeft,child: Text('Nom du produits',style: TextStyle(color: Colors.white),)),
                          Container(alignment: Alignment.centerLeft,child: Text('Total à payer : 30000 Ar',style: TextStyle(color: Colors.white,fontSize: 14.sp),)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10.h),
                            height: 25.h,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25.r),
                                          side: BorderSide(color: Constant.colorSecondary)
                                      )
                                  )
                              ),
                              onPressed: ()=>{
                              },
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Supprimer',style: TextStyle(color: Colors.white,fontSize: 11),),
                                    Icon(Icons.delete,color: Colors.red,size: 15,)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10.h,left: 8.w),
                            height: 25.h,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25.r),
                                          side: BorderSide(color: Constant.colorSecondary)
                                      )
                                  )
                              ),
                              onPressed: ()=>{
                              },
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Modifier',style: TextStyle(color: Colors.white,fontSize: 11),),
                                    Icon(Icons.edit,color: Color(0xff0000ff),size: 15,)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.h),
                      height: 25.h,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.r),
                                    side: BorderSide(color: Constant.colorPrimaryAccent)
                                )
                            )
                        ),
                        onPressed: ()=>{
                        },
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Consulter',style: TextStyle(color: Colors.white,fontSize: 11),),
                              Icon(Icons.arrow_right_alt,color: Color(0xffffffff),size: 18,)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}