import 'package:aize/utils/data.dart';
import 'package:aize/widgets/botttomnav.dart';
import 'package:aize/widgets/warehouse_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WarehouseManager extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.colorPrimary,
      appBar: AppBar(
        leading: BackButton(),
        title: Text('Gestion de dépôt',style: TextStyle(color: Colors.white),),
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
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          hintText: 'Recherche dépôt',
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
              height: 0.635.sh,
              child: ListView.builder(itemCount: 10,itemBuilder: (BuildContext context, int index) {
                return WarehouseItem();
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