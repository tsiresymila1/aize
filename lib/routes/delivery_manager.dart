import 'package:aize/utils/data.dart';
import 'package:aize/widgets/base.dart';
import 'package:aize/widgets/delivery_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeliveryManager extends GetView {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      title: "Livraison",
      isback: true,
      top: 136.h,
      height: 280.h,
      actions: [
        InkWell(
          child: Container(
            padding: EdgeInsets.all(8.0).copyWith(top: 20, left: 10),
            child: Icon(EvilIcons.plus,color: Colors.white,size: 30,),
          ),
          onTap: (){

          },
        ),
      ],
      body : Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 16.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8.h),
                    height: 40.h,
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          hintText: 'Recherche de livraison',
                          hintStyle: TextStyle(fontSize: 13.sp),
                          prefixIcon: Icon(Icons.search),
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(1.r),
                              borderSide: BorderSide.none
                          )
                      ),
                    ),
                  ),
                  Container(
                    height: 40.h,
                    margin: EdgeInsets.symmetric(vertical: 8.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40.h,
                          alignment: Alignment.centerLeft,
                          width: 0.5.sw,
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: FlutterToggleTab(
                              labels: ['Sortante','Entrante'],
                              selectedBackgroundColors: [Color(0xf60b5999)],
                              unSelectedBackgroundColors: [Color(0xfff1f1f1)],
                              isScroll: false,
                              initialIndex: 0,
                              borderRadius: 0,
                              width: 0.1.sw,
                              selectedTextStyle: TextStyle(color: Colors.white,fontSize: 13.sp),
                              unSelectedTextStyle: TextStyle(color: Constant.colorPrimary,fontSize: 13.sp),
                              selectedLabelIndex: (index){
                                printInfo(info:index.toString());

                              }),
                        ),
                        Container(
                            height: 40.h,
                            width: 0.34.sw,
                            padding: EdgeInsets.symmetric(horizontal: 8.w),
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 5.h,bottom:5.h,left: 10.w,right: 10.w),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(0.r),
                                    borderSide: BorderSide(
                                      color: Colors.grey.shade300,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20.r),
                                      borderSide: BorderSide(
                                        color: Constant.colorPrimary,
                                      )
                                  ),
                                  hintText: 'Fait',
                                hintStyle: TextStyle(fontSize: 13.sp)
                              ),
                              icon: Icon(                // Add this
                                Icons.arrow_drop_down,  // Add this
                                color: Colors.blue,   // Add this
                              ),
                              items: <String>['Fait', 'En cours'].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: new Text(value,style: TextStyle(fontSize: 13.sp),),
                                );
                              }).toList(),
                              onChanged: (_) {},
                            )
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 0.580.sh,
              child: ListView.builder(itemCount: 10,padding: EdgeInsets.only(top: 8.h),itemBuilder: (BuildContext context, int index) {
                return DeliveryItem();
              },
              ),
            )
          ],
        ),
      ), onSearch: (String data) {  },
    );
  }

}