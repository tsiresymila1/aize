import 'package:aize/utils/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeliverItem extends GetView {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
        padding:  EdgeInsets.only(bottom: 12.h,top: 6.h),
        decoration: BoxDecoration(
            color: Constant.colorPrimaryAccent,
            borderRadius: BorderRadius.circular(12.r)
        ),
        child: ListTile(
          leading: Container(
            height: 60.r,
            width: 60.r,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40.r),
                image: DecorationImage(image: AssetImage('assets/p1.png'))
            ),
          ),
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
                          Container(alignment: Alignment.centerLeft,child: Text('Jean Jacques',style: TextStyle(color: Colors.white),)),
                          Container(alignment: Alignment.centerLeft,child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(margin: EdgeInsets.only(right: 8.w),child:Text('Permis C',style: TextStyle(color: Colors.white,fontSize: 14.sp),)),
                              Container(margin: EdgeInsets.only(left: 8.w),child: Text('Camionette',style: TextStyle(color: Colors.white,fontSize: 14.sp),))
                            ],
                          )),
                          Container(alignment: Alignment.centerLeft,child: Row(
                            children: [
                              Container(margin: EdgeInsets.only(right: 8.w),child: Text('25648WWT',style: TextStyle(color: Colors.white,fontSize: 14.sp),)),
                              Container(margin: EdgeInsets.only(left: 8.w),child: Text('1 à 5t',style: TextStyle(color: Colors.white,fontSize: 14.sp),))
                            ],
                          )),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.all(2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 4.h),
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
                                    Icon(Icons.delete,color: Colors.red,size: 15,)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 4.h),
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
                                    Icon(Icons.edit,color: Color(0xff0000ff),size: 15,)
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
            ],
          ),
        ),
      ),
    );
  }

}