import 'package:aize/controllers/dashboard.dart';
import 'package:aize/routes/product_manager.dart';
import 'package:aize/routes/warehouse_manager.dart';
import 'package:aize/widgets/dash.dart';
import 'package:aize/widgets/logo.dart';
import 'package:aize/widgets/base.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryMenu extends GetView<DashBoardController> {



  @override
  Widget build(BuildContext context) {
    return BaseView(
      body: Container(
        height: 1.sh,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Logo(),
              Padding(
                padding:  EdgeInsets.only(top: 12.h),
                child: Row(
                  children: [
                    Dash(text: 'Vente', callback: (){
                      Get.to(ProductManager());
                    },),
                    Dash(text: 'Achat', callback: (){
                      Get.to(()=>WarehouseManager());
                    })
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      onSearch: (data){

      },
    );
  }

}