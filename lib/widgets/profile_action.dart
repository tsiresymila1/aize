import 'package:aize/utils/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileAction extends GetView {
  final String title ;
  final String value ;
  final VoidCallback callback;
   ProfileAction({
    Key? key,
    required this.title,
     this.value = '',
    required this.callback
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 8.0),
      child: InkWell(
        onTap: (){},
        focusColor: Colors.lightBlueAccent,
        child: Container(
          decoration: new BoxDecoration (
              color: Constant.colorPrimaryAccent,
              borderRadius: BorderRadius.circular(8.r)
          ),
          child: ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.only(top:2.h,bottom: 2.h),
                  child: Text(this.title,style: TextStyle(color: Colors.white,fontSize: 14)),
                ),
                Padding(
                  padding:  EdgeInsets.only(bottom: 2.h),
                  child: InkWell(
                    child: Container(
                      padding:EdgeInsets.symmetric(horizontal: 4.w),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(20.r)
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('consulter',style: TextStyle(color: Colors.white,fontSize: 14),),
                          Icon(Icons.arrow_right_alt,color: Colors.white,size: 18,)
                        ],
                      ),
                    ),
                    onTap: this.callback,
                  ),
                ),
              ],
            ),
            trailing: this.value != '' ?  Container(
              padding: EdgeInsets.symmetric( horizontal:14.r,vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25)
              ),
              child: Text(this.value,style: TextStyle(color: Colors.white),),
            ):Container(width: 1,height: 1),
          ),
        ),
      ),
    );
  }
}