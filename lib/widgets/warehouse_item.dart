import 'package:aize/controllers/warehouse.dart';
import 'package:aize/utils/data.dart';
import 'package:aize/widgets/add_warehouse.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class WarehouseItem extends GetView<WarehouseControler> {
  final Map data ;

  WarehouseItem({required this.data});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        controller.addressC.text = data['adresse'] ?? '';
        controller.refC.text = data['ref'];
        controller.lieuC.text = data['lieu'];
        AwesomeDialog (
          context: context,
          animType: AnimType.BOTTOMSLIDE,
          headerAnimationLoop: false,
          dialogType: DialogType.NO_HEADER,
          body: AddWarehouse(title: "Modification",),
          btnCancel: Container(
            margin: EdgeInsets.only(bottom: 8.h),
            child: RoundedLoadingButton(
              color: Colors.red,
              height: 34.h,
              controller: controller.btnController,
              onPressed: () async{
                var r = await controller.delete({"id":data['id']});
                if(r != null){
                  await controller.getData();
                }
                Get.back();
              },
              child: Container(
                margin: EdgeInsets.all(4.r),
                child: Text( 'Supprimer',style: TextStyle(color: Colors.white),),
              ),
            ),
          ),
          btnOk: Container(
            margin: EdgeInsets.only(bottom: 8.h),
            child: RoundedLoadingButton(
              color: Constant.primaryColor,
              height: 34.h,
              controller: controller.btnController,
              onPressed: () async{
                var r;
                r = await controller.updateWarehouse(data['id']);
                if(r != null){
                  await controller.getData();
                }
                Get.back();
              },
              child: Container(
                margin: EdgeInsets.all(4.r),
                child: Text( 'Modifier',style: TextStyle(color: Colors.white),),
              ),
            ),
          ),
        )..show();
        // Get.dialog(AddWarehouse(warehouseControler: controller,id: data['id']));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 6.w,vertical: 6.h),
        padding:  EdgeInsets.only(bottom: 12.h,top: 6.h),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.withOpacity(.2)),
            borderRadius: BorderRadius.circular(4),
            boxShadow: [
              BoxShadow(color: Colors.grey.withOpacity(.3),
                blurRadius: 2.0,
                spreadRadius: 0.0,
                offset: Offset(
                  1.5,
                  2.0,
                ),)
            ]
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              child: Column(
                children: [
                    Container(
                      padding: EdgeInsets.only(top: 11.h),
                      child: Image.asset("assets/warehouse.png",width: 100.r, height: 100.r,),
                    ),
                   Container(
                    padding: EdgeInsets.symmetric(vertical: 1.h),
                    child: Text(data['ref']+' ', style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500, color: Constant.colorPrimary),),
                  ),
                  Container(
                    child: Text(data['lieu']+'	', style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w400),),
                  )
                ],
              ),
            ),
            Container(
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Badge(
                    badgeColor: Constant.primaryColor,
                    badgeContent: Text('25', style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w200, color: Colors.white),),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}