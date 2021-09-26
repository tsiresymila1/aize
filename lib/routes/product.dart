import 'package:aize/utils/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Product extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Constant.primaryColor,
                    ),
                    child: Stack(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 60.h),

                            alignment: Alignment.bottomCenter,
                            height: 320.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.r),bottomRight: Radius.circular(30.r))
                            ),
                            padding: EdgeInsets.only(top: 10.h,bottom: 30.h,left: 8.w, right: 8.w),
                            child: Image.asset('assets/product2.png'),
                        ),
                        Container(
                          margin: EdgeInsets.all(8.0).copyWith(top:12, left: 4),
                          height: 80.h,
                          child: Row(
                            children: [
                              Container(child: IconButton(onPressed: (){
                                Get.back(canPop: false);
                              }, icon: Icon(EvilIcons.chevron_left,size: 34,color: Colors.white,))),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 350.h),
                    decoration: BoxDecoration(
                      color: Color(0xfff5f5f5),
                        borderRadius: BorderRadius.only(topLeft: Radius.elliptical(10, 10), topRight: Radius.elliptical(10, 10)),
                        boxShadow: [
                          BoxShadow(color: Colors.grey.withOpacity(.2),
                            blurRadius: 2.0,
                            spreadRadius: 0.0,
                            offset: Offset(
                              -1.5,
                              -2.0,
                            ),)
                        ]
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(top: 16.h,left: 12.w,right: 12.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(child: Text('GEL MAIN PURIFICATEUR'.capitalize!,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18.sp,color: Color(0xff656565)),)),
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
                        ),
                        Container(
                            padding: EdgeInsets.only(top: 20.h,left: 20.w,right: 20.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(FontAwesome.dollar, color: Colors.amber,),
                                      Text('25000 AR',style: TextStyle(fontSize: 13.sp),),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(SimpleLineIcons.star, color: Colors.teal,),
                                      Text(' Categorie A',style: TextStyle(fontSize: 13.sp),),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(SimpleLineIcons.home, color: Colors.green,),
                                      Text(' DEPOT-PROD',style: TextStyle(fontSize: 13.sp),),
                                    ],
                                  ),
                                ),
                              ],
                            )
                        ),

                        Divider(),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
                          child: Row(
                            children: [
                              Container(child: Text('Description'.capitalize!,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16.sp,color: Color(0xff656565)),)),
                            ],
                          ),
                        ),
                        Flexible(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
                            child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                              // overflow: TextOverflow.,
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.justify,)
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
                          child: ButtonBar(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new ElevatedButton(
                                child: Row(
                                  children: [
                                    new Icon(EvilIcons.trash,color: Colors.white),
                                    new Text('Supprimer',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w100),),
                                  ],
                                ),
                                onPressed: null,
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(Color( 0xffd24a5a))
                                ),
                              ),
                              new ElevatedButton(
                                child: Row(
                                  children: [
                                    new Icon(EvilIcons.pencil,color: Colors.white),
                                    new Text('Modifier',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w100),),
                                  ],
                                ),
                                onPressed: null,
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Constant.primaryColor)
                                ),
                              ),
                            ],
                          ),
                        ),
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