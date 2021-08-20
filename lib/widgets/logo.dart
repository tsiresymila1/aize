import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      child: Center(
          child: Image.asset("assets/logo.jpg",fit: BoxFit.cover,
        width: 1.sw,)),
    );
  }

}