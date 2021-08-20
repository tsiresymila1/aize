import 'package:aize/utils/data.dart';
import 'package:aize/widgets/botttomnav.dart';
import 'package:aize/widgets/profile_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Profile extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.colorPrimaryAccent,
      appBar: AppBar(
        elevation: 0,
      leading: IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: (){
        Get.back();
      },),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
               Container(
                 height: 1.sh -(4/3)*kToolbarHeight,
                 child: Column(
                   children: [
                     Container(
                       height: 180.h,
                       width: 1.sw,
                       alignment: Alignment.topCenter,
                       color: Constant.colorPrimaryAccent,
                     ),
                     Expanded(
                       flex: 1,
                         child: Container(
                         alignment: Alignment.topCenter,
                         decoration: BoxDecoration(
                           color: Constant.colorSecondary,
                           borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
                         ),
                           padding: EdgeInsets.only(top: 40.h),
                           child: Column(
                             children: [
                               Container(
                                 margin: EdgeInsets.only(top: 80.h,left: 40.w,right: 40.w) ,
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                     Container(
                                       alignment: Alignment.topLeft,
                                       child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text('Kanto Fitiavana',style: TextStyle(color: Colors.white,fontSize: 30.sp),),
                                           Text('DIrecteur Génerale',style: TextStyle(color: Colors.grey,fontSize: 24.sp),)
                                         ],
                                       ),
                                     ),
                                     Container(
                                       margin: EdgeInsets.all(8.r),
                                       decoration: BoxDecoration(
                                           border: Border.all(color: Colors.blueGrey),
                                           borderRadius: BorderRadius.circular(25)
                                       ),
                                       child: IconButton(icon: Icon(Icons.edit,color: Colors.white,),onPressed: (){
                                         printInfo(info: "Hello");
                                       },),
                                     ),
                                   ],
                                 ),
                               ),
                               Padding(
                                 padding:  EdgeInsets.symmetric(horizontal: 40.w,vertical: 10.h),
                                 child: Divider(color: Colors.white,thickness: 0.8,),
                               ),
                               Container(
                                 margin: EdgeInsets.symmetric(horizontal: 16.w),
                                 child: Column(
                                   children: [
                                     ProfileAction(title: 'Liste des produits', value: '5', callback: (){}),
                                     ProfileAction(title: 'Liste des demandes', value: '5', callback: (){}),
                                     ProfileAction(title: 'Productivité',callback: (){}),
                                   ],
                                 ),
                               )
                             ],
                           ),
                       )
                     )
                   ],
                 ),
               ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.all(8.r),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueGrey),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: IconButton(icon: Icon(Icons.logout,color: Colors.white,),onPressed: (){},),
              ),
            ),
              Padding(
                padding:  EdgeInsets.only(top: 40.h),
                child: Align(
                  alignment: Alignment.topCenter,
                child: Container(
                  height:  240.r,
                  width: 240.r,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(140),
                      image: DecorationImage(image: AssetImage('assets/p1.png'))
                  ),

                ),
            ),)
            ],

          )
        )
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }

}

