import 'package:aize/utils/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Dash extends StatelessWidget {
    final VoidCallback callback;
    final String text;
   Dash({required this.text,required this.callback});
  @override
  Widget build(BuildContext context) {
     return Expanded(
       flex: 1,
       child: Padding(
         padding:  EdgeInsets.only(left: 10.w,right: 10.w),
         child: InkWell(
            onTap: this.callback,
             child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r)
                  ),
                 height: 120.h,
                 child: Center(
                   child: Text(this.text,style: TextStyle(color: Constant.colorPrimary,fontSize: 14.sp),),
                 ),
             ),
          ),
       ),
     );
  }

}