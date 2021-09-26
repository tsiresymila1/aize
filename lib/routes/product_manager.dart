import 'package:aize/controllers/product.dart';
import 'package:aize/utils/data.dart';
import 'package:aize/widgets/add_product.dart';
import 'package:aize/widgets/base.dart';
import 'package:aize/widgets/poduct_item.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class ProductManager extends GetView<ProductController> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      title: "Produits",
      isback: true,
      height: 280.h,
      top: 148.h,
      actions: [
        InkWell(
          child: Container(
            padding: EdgeInsets.all(8.0).copyWith(top: 20, left: 10),
            child: Icon(EvilIcons.plus,color: Colors.white,size: 30,),
          ),
          onTap: (){
            AwesomeDialog (
              context: context,
              animType: AnimType.BOTTOMSLIDE,
              headerAnimationLoop: false,
              dialogType: DialogType.NO_HEADER,
              body: AddProduct(title: "Ajout",),
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
            padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 16.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 40.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        hintText: 'Recherche des produits',
                        hintStyle: TextStyle(fontSize: 13.sp),
                        prefixIcon: Icon(Icons.search),
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                            borderSide: BorderSide.none
                        )
                    ),
                  ),
                ),
                Container(
                  height: 50.h,
                  margin: EdgeInsets.only(top: 8.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 40.h,
                          width: 0.3.sw,
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(top: 5.h,bottom:5.h,left: 10.w,right: 10.w),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3.r),
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
                                hintText: 'Dépot',
                                hintStyle:  TextStyle(fontSize: 13.sp)
                            ),
                            icon: Icon(                // Add this
                              Icons.arrow_drop_down,  // Add this
                              color: Colors.blue,   // Add this
                            ),
                            items: <String>['A', 'B', 'C', 'D'].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: new Text(value,style: TextStyle(fontSize: 13.sp),),
                              );
                            }).toList(),
                            onChanged: (_) {},
                          )
                      ),
                      Container(
                          height: 40.h,
                          width: 0.3.sw,
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(top: 5.h,bottom:5.h,left: 10.w,right: 10.w),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3.r),
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
                                hintText: 'ASC',
                              hintStyle:  TextStyle(fontSize: 13.sp)
                            ),
                            icon: Icon(                // Add this
                              Icons.arrow_drop_down,  // Add this
                              color: Colors.blue,   // Add this
                            ),
                            items: <String>['A', 'B'].map((String value) {
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
                )
              ],
            ),
          ),
          Container(
            height: 1.sh - 336.h,
            child:ListView(
              children:  controller.searchQuery.value == '' ? controller.data.map((element) {
                return ProductItem(data: element,);
              }).toList() : controller.data.where((element) => controller.search(element)).toList().map((element) {
                return ProductItem(data: element,);
              }).toList(),
            ),
          )
        ],
      ),
    ), onSearch: (data){});
  }
  
}