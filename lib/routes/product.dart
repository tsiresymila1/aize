import 'package:aize/utils/data.dart';
import 'package:aize/widgets/base.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Product extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Constant.colorSecondary,
        appBar: AppBar(
          elevation: 0,
            leading: IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: (){
              Get.back();
            },),
        ),
        body: SingleChildScrollView(
          child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          height: 300.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.r),bottomRight: Radius.circular(30.r))
                          ),
                          padding: EdgeInsets.only(top: 10.h,bottom: 10.h,left: 8.w, right: 8.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Constant.colorPrimary
                                ),
                                child: Center(child: Text('100 PCS',overflow: TextOverflow.clip,style: TextStyle(color: Colors.white), textAlign: TextAlign.center,)),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 60.h),
                          alignment: Alignment.bottomCenter,
                          height: 300.h,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.r),bottomRight: Radius.circular(30.r))
                          ),
                          padding: EdgeInsets.only(top: 10.h,bottom: 10.h,left: 8.w, right: 8.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Image.asset('assets/p1.png')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10.h,left: 8.w,right: 8.w),
                    child: Text('NOM DU PRODUIT',style: TextStyle(color: Colors.white,fontSize: 22.sp),),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10.h,left: 8.w,right: 8.w),
                    child: Text('25000 AR',style: TextStyle(color: Colors.white,fontSize: 22.sp),),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10.h,left: 8.w,right: 8.w),
                    child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley',
                        style: TextStyle(color: Colors.white,fontSize: 14.sp),overflow: TextOverflow.clip,textAlign: TextAlign.center,),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 4.h,left: 8.w,right: 8.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 20.h),
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
                              margin: EdgeInsets.all(4.r),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Supprimer',style: TextStyle(color: Colors.white,fontSize: 13),),
                                  Icon(Icons.delete,color: Colors.red,size: 18,)
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20.h),
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
                              margin: EdgeInsets.all(4.r),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Modifier',style: TextStyle(color: Colors.white,fontSize: 13),),
                                  Icon(Icons.edit,color: Colors.white,size: 18,)
                                ],
                              ),
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                ],
              ),
          ),
        ),
        // onSearch: (data){
        //
        // }
        );
  }

}