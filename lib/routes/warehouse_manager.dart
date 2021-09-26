import 'package:aize/controllers/warehouse.dart';
import 'package:aize/utils/data.dart';
import 'package:aize/widgets/add_warehouse.dart';
import 'package:aize/widgets/base.dart';
import 'package:aize/widgets/warehouse_item.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'dart:math' as math;

class WarehouseManager extends GetView<WarehouseControler> {

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return BaseView(
          isback: true,
          title: "Dépot",
          top: 150.h,
          height: 240.h,
          actions: [
            InkWell(
              child: Container(
                padding: EdgeInsets.all(8.0).copyWith(top: 20, left: 10),
                child: Icon(EvilIcons.plus, color: Colors.white, size: 30,),
              ),
              onTap: () {
                AwesomeDialog (
                  context: context,
                  animType: AnimType.BOTTOMSLIDE,
                  headerAnimationLoop: false,
                  dialogType: DialogType.NO_HEADER,
                  body: AddWarehouse(title: "Ajout",),
                  btnCancelText: 'Annuler',
                  btnOk: Container(
                    margin: EdgeInsets.only(bottom: 8.h),
                    child: RoundedLoadingButton(
                      color: Constant.primaryColor,
                      height: 38.h,
                      controller: controller.btnController,
                      onPressed: () async{
                        var r;
                        r = await controller.add();
                        if(r != null){
                          await controller.getData();
                        }
                        Get.back();
                      },
                      child: Container(
                        margin: EdgeInsets.all(4.r),
                        child: Text( 'Ajouter',style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ),
                )..show();
              },
            ),
          ],
          body: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin:EdgeInsets.symmetric( horizontal: 20.w, vertical: 8.h),
                  height: 42.h,
                  child: TextField(
                    key: ValueKey<int>(math.Random().nextInt(5)),
                    decoration: InputDecoration(
                        filled: true,
                        hintText: 'Recherche dépôt',
                        hintStyle: TextStyle(fontSize: 13.sp),
                        prefixIcon: Icon(Icons.search),
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.w),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide.none
                        )
                    ),
                    controller: controller.searchC,
                    onSubmitted: controller.onSearch,
                    onChanged: (String data){
                      if(data == "") controller.onSearch(data);
                    },
                  ),
                ),
                Container(
                  height: 0.634.sh,
                  margin: EdgeInsets.only(top: 18.h),
                  child: RefreshIndicator(
                    key: controller.refreshKey,
                    onRefresh: () async {
                      await controller.getData();
                      return null;
                    },
                    child: GridView.count(
                      crossAxisCount: 2,
                      children:  controller.searchQuery.value == '' ? controller.data.value['data']!.map((element) {
                        return WarehouseItem(data: element,);
                      }).toList() : controller.data.value['data']!.where((element) => controller.search(element)).toList().map((element) {
                        return WarehouseItem(data: element,);
                      }).toList(),
                    ),
                  ),
                )
              ],
            ),
          ),
          onSearch: (data) {

          });
    });
  }

}