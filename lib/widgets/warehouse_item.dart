import 'package:aize/utils/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WarehouseItem extends GetView {
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
            child: Image.asset('assets/p1.png',height: 80.r,width: 80.r,),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.r)
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
                          Container(alignment: Alignment.centerLeft,child: Text('Nom du dépôt',style: TextStyle(color: Colors.white,fontSize: 21.sp,fontWeight: FontWeight.bold),)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.h),
                height: 40.h,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.r),
                              side: BorderSide(color: Color(0xff2d64ee))
                          )
                      )
                  ),
                  onPressed: ()=>{
                  },
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Consulter',style: TextStyle(color: Colors.white,fontSize: 16.sp),),
                        Icon(Icons.arrow_right_alt,color: Color(0xffffffff),size: 30.r,)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}