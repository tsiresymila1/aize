import 'dart:convert';

import 'package:aize/routes/home.dart';
import 'package:aize/services/auth_service_provider.dart';
import 'package:aize/utils/data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:dio/dio.dart' as Dio;
import 'package:rounded_loading_button/rounded_loading_button.dart';

class RegisterController extends GetxController{

  var isObscure = true.obs;
  var loading = false.obs;
  RxString function = ''.obs;
  TextEditingController userController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController cpasswordController = new TextEditingController();
  TextEditingController nameController = new TextEditingController();
  final RoundedLoadingButtonController btnController = RoundedLoadingButtonController();
  AuthProvider provider = new AuthProvider();
  final box = GetStorage();

  signup(){
    loading.value = true;
    if(isValid()){
      Map<String,String> data = {
        "user" : userController.text,
        "mdp" : passwordController.text,
        "name": nameController.text
      };
      provider.signup(data).then((Dio.Response r){
        this.loading.value = false;
        btnController.stop();
        printInfo(info: r.data.toString());
        if(r.statusCode==200 &&  r.data.startsWith("!success")){
          Get.snackbar("Erreur d'inscription", "Des erreur sont survenus lors de l'inscription",snackPosition: SnackPosition.BOTTOM,backgroundColor: Constant.colorPrimary,colorText: Colors.white);
        }
        else if(r.statusCode == 200  &&  r.data.startsWith("success")){
          box.write("auth", json.encode(data));
          Get.to(()=>Home());
        }
        else{
          Get.snackbar("Erreur de la connexion", "Erreur lors de la connexion",snackPosition: SnackPosition.BOTTOM,backgroundColor: Constant.colorPrimary,colorText: Colors.white);
        }
      });
    }
    else{
      btnController.stop();
      Get.snackbar("Erreur", "Completer les champs obligatoires",snackPosition: SnackPosition.BOTTOM,backgroundColor: Constant.colorPrimary,colorText: Colors.white);
    }
  }

  bool isValid(){
     return userController.text.trim().length >= 4  && passwordController.text.trim().length >= 8 && passwordController.text == cpasswordController.text && nameController.text.trim().length >= 4 ;
  }
}