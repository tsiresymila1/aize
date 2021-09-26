import 'package:aize/utils/data.dart';
import 'package:aize/widgets/base.dart';
import 'package:aize/widgets/bottomsheet_add_product_cart.dart';
import 'package:aize/widgets/product_cart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:steps_indicator/steps_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeliveryDetails extends GetView {
  @override
  Widget build(BuildContext context) {
    return BaseView(
        title: "Detail de livraison",
        isback: true,
        subtitle: "9784585",
        height: 280.h,
        showBottomNav: false,
        actions: [
          InkWell(
            child: Container(
              padding: EdgeInsets.all(8.0).copyWith(top: 20, left: 10),
              child: Icon(EvilIcons.plus,color: Colors.white,size: 30,),
            ),
            onTap: (){
                Get.bottomSheet(BottomSheetAddProductCart(), );
            },
          ),
        ],
        body: Container(
          child: Column(
            children: [
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
                            Text("  12-09-15",style:TextStyle(fontSize: 13.sp, color: Colors.white)),
                          ],
                        )
                    ),
                    Container(
                        padding: EdgeInsets.only(left:8.w),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(EvilIcons.clock,color: Colors.red,),
                            Text("  12-09-15",style:TextStyle(fontSize: 13.sp, color: Colors.white)),
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
                    Icon(EvilIcons.cart,color: Colors.white,),
                    Container(
                      padding: EdgeInsets.only(left:8.w),
                      child: Text("Kanto Fitiavana",style:TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500,color: Colors.white)),
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
                    doneStepColor: Colors.green,
                    doneLineColor: Colors.green,
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
                        color: Colors.green,
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
                height: 1.sh - 336.h,
                child: ListView.builder(itemCount: 10,itemBuilder: (BuildContext context, int index) {
                  return ProductCartItem();
                },
                ),
              ),
              Container(
                height: 80.h,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 4.h),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(FontAwesome.dollar,color: Colors.amber,size: 15),
                            Icon(FontAwesome.dollar,color: Colors.amber,size: 15,),
                            Text('  20000 Ar',style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                    ),
                    new ElevatedButton(
                      child: Row(
                        children: [
                          new Icon(EvilIcons.check,color: Colors.white),
                          new Text('Valider',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w100),),
                        ],
                      ),
                      onPressed: null,
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.green)
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        onSearch: (onSearch){
        });
  }

}