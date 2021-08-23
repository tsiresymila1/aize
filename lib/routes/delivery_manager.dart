import 'package:aize/utils/data.dart';
import 'package:aize/widgets/botttomnav.dart';
import 'package:aize/widgets/delivery_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeliveryManager extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.colorPrimary,
      appBar: AppBar(
        leading: BackButton(),
        title: Text('Gestion des livraisons',style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_circle))
        ],
      ),
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 16.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 50.h,
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
                              isScroll: false,
                              initialIndex: 0,
                              width: 0.1.sw,
                              selectedTextStyle: TextStyle(color: Colors.white),
                              unSelectedTextStyle: TextStyle(),
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
                                    borderRadius: BorderRadius.circular(20.r),
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
                                  hintText: 'Fait'
                              ),
                              icon: Icon(                // Add this
                                Icons.arrow_drop_down,  // Add this
                                color: Colors.blue,   // Add this
                              ),
                              items: <String>['Fait', 'En cours'].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: new Text(value),
                                );
                              }).toList(),
                              onChanged: (_) {},
                            )
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 50.h,
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          hintText: 'Recherche de livraison',
                          prefixIcon: Icon(Icons.search),
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 0.616.sh,
              child: ListView.builder(itemCount: 10,itemBuilder: (BuildContext context, int index) {
                return DeliveryItem();
              },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }

}