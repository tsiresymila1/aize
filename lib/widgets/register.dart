
import 'package:aize/controllers/login.dart';
import 'package:aize/controllers/register.dart';
import 'package:aize/routes/home.dart';
import 'package:aize/utils/data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class RegisterWidget extends GetView<RegisterController> {


  @override
  Widget build(BuildContext context) {
    return Obx((){
        return Container(
          padding: EdgeInsets.only(top: 20.h),
          child: Column(mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      alignment:Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10.w),
                      child: Row(
                        children: [
                          Text('Nom  ',style: TextStyle(color: Constant.colorPrimary),textAlign: TextAlign.start,),
                          Text(' *',style: TextStyle(color: Colors.red),textAlign: TextAlign.start,),
                        ],
                      ),
                    ),
                    Container(
                      height: 42.h,
                      child: TextField(
                        controller: controller.nameController,
                        style: TextStyle(
                            height: 2.0.h,
                            fontSize: 14
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 5.h,bottom:5.h,left: 10.w),
                          isDense:true,
                          hintText: 'Nom ',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.r),
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
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      alignment:Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10.w),
                      child: Row(
                        children: [
                          Text('Nom d\'utilisateur ',style: TextStyle(color: Constant.colorPrimary),textAlign: TextAlign.start,),
                          Text(' *',style: TextStyle(color: Colors.red),textAlign: TextAlign.start,),
                        ],
                      ),
                    ),
                    Container(
                      height: 42.h,
                      child: TextField(
                        controller: controller.userController,
                        style: TextStyle(
                            height: 2.0.h,
                            fontSize: 14
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 5.h,bottom:5.h,left: 10.w),
                          isDense:true,
                          hintText: 'Nom d\'utilisateur',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.r),
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
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      alignment:Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10.w),
                      child: Row(
                        children: [
                          Text('Mot de passe ',style: TextStyle(color: Constant.colorPrimary),textAlign: TextAlign.start,),
                          Text(' *',style: TextStyle(color: Colors.red),textAlign: TextAlign.start,),
                        ],
                      ),
                    ),
                    Container(
                      height: 42.h,
                      child: TextField(
                        controller: controller.passwordController,
                        style: TextStyle(
                            height: 2.0.h,
                            fontSize: 14
                        ),
                        obscureText: controller.isObscure.value,
                        decoration: InputDecoration(
                          isDense: true,
                          isCollapsed: true,
                          suffixIcon:  IconButton(icon: Icon(controller.isObscure.value ? Icons.visibility_off :Icons.visibility,size: 20,),onPressed: (){
                            controller.isObscure.value = ! controller.isObscure.value;
                          },),
                          hintText: 'Mot de passe',
                          contentPadding: EdgeInsets.only(top: 5.h,bottom:5.h,left: 10.w),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.r),
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
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical: 10.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      alignment:Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10.w),
                      child: Row(
                        children: [
                          Text('Confirmation Mot de passe ',style: TextStyle(color: Constant.colorPrimary),textAlign: TextAlign.start,),
                          Text(' *',style: TextStyle(color: Colors.red),textAlign: TextAlign.start,),
                        ],
                      ),
                    ),
                    Container(
                      height: 42.h,
                      child: TextField(
                        controller: controller.cpasswordController,
                        style: TextStyle(
                            height: 2.0.h,
                            fontSize: 14
                        ),
                        obscureText: controller.isObscure.value,
                        decoration: InputDecoration(
                          isDense: true,
                          isCollapsed: true,
                          hintText: 'Confirmation Mot de passe',
                          contentPadding: EdgeInsets.only(top: 5.h,bottom:5.h,left: 10.w),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.r),
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
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20.h),
                child: RoundedLoadingButton(
                  color: Constant.primaryColor,
                  height: 48.h,
                  controller: controller.btnController,
                  onPressed: () {
                    controller.signup();
                  },
                  child: Container(
                    margin: EdgeInsets.all(10.r),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('S\'inscrire',style: TextStyle(color: Colors.white),),
                        Icon(Icons.arrow_right_alt,color: Colors.white,)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }
    );
  }

}

