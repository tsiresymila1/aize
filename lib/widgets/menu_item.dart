import 'package:aize/utils/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

class MenuItem extends GetView {
  final String asset;
  final String title;
  final List<Widget> children ;
  final VoidCallback callback;

  MenuItem({required this.title,required this.asset,required this.callback,this.children=const []});

  @override
  Widget build(BuildContext context) {
     return Container(
         constraints: BoxConstraints(
           minHeight:  100,
         ),
         alignment: Alignment.centerLeft,
         padding: EdgeInsets.all(0),
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
         margin: EdgeInsets.only(top: 18.h),
         child: Theme(
           data: ThemeData().copyWith(dividerColor: Colors.transparent),
           child: ExpansionTile(
             leading: Container(
               width: 60,
               height: 110,
               margin: EdgeInsets.only(top: 12),
               decoration: BoxDecoration(
                   color: Colors.transparent
               ),
               child: Image.asset(this.asset,height: 50,width: 50,),
             ),
             title: Container(
               height: 100,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Flexible(flex: 1,child: Container(
                     alignment: Alignment.centerLeft,
                     margin: EdgeInsets.only(left: 10.w),
                     decoration: BoxDecoration(
                         color: Colors.transparent
                     ),
                     child: Column(
                       mainAxisSize: MainAxisSize.min,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Container(
                             padding: EdgeInsets.all(0),
                             alignment: Alignment.centerLeft,
                             child: Text(this.title,style: TextStyle(color: Constant.colorSecondary,fontSize: 14.sp,fontWeight: FontWeight.bold),)
                         ),
                         Container(
                           height: 25,
                           alignment: Alignment.centerLeft,
                           margin: EdgeInsets.only(top: 8),
                             padding: EdgeInsets.all(0),
                             child: Row(
                               mainAxisSize: MainAxisSize.min,
                               children: [
                                 Text('Voir plus',style: TextStyle(color: Constant.colorSecondary,fontSize: 14.sp),),
                                 IconButton(padding: EdgeInsets.all(0), onPressed: (){}, icon: Icon(EvilIcons.arrow_right))
                               ],
                             )
                         ),
                       ],
                     ),
                   ))
                 ],
               ),
             ),
             trailing: this.children.length == 0 ? Container(width: 0,height: 0,): Icon(EvilIcons.chevron_down,size: 30,),
             children: this.children,
             onExpansionChanged: (state){
               if(this.children.length == 0 ){
                 this.callback();
               }
             },
           ),


         ),
     );
  }

}