import 'package:aize/routes/product.dart';
import 'package:aize/utils/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductItem extends GetView {
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
                            Container(alignment: Alignment.centerLeft,child: Text('Nom du produits',style: TextStyle(color: Colors.white),)),
                            Container(alignment: Alignment.centerLeft,child: Text('Categorie : globale',style: TextStyle(color: Colors.white,fontSize: 14.sp),)),
                          ],
                        ),
                      ),
                      Container(
                        height: 50.r,
                        width: 50.r,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white
                        ),
                        child: Center(child: Text('100 PCS',overflow: TextOverflow.clip,style: TextStyle(color: Constant.colorPrimaryAccent,fontSize: 12.sp), textAlign: TextAlign.center,)),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(alignment: Alignment.centerLeft,child: Text('20000 AR',style: TextStyle(color: Colors.white),)),
                      Container(alignment: Alignment.centerLeft,child: Text('Depot A',style: TextStyle(color: Colors.white,fontSize: 14.sp),)),
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