

import 'package:aize/services/warehouse_provider.dart';
import 'package:aize/utils/data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as Dio;
import 'package:get_storage/get_storage.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class WarehouseControler extends GetxController {
  RxMap<String,List<dynamic>> data = {'data': []}.obs;
  WarehouseProvider provider = new WarehouseProvider();
  var refreshKey = GlobalKey<RefreshIndicatorState>();
  RoundedLoadingButtonController btnController = new RoundedLoadingButtonController();
  TextEditingController refC = new TextEditingController();
  TextEditingController lieuC = new TextEditingController();
  TextEditingController addressC = new TextEditingController();
  TextEditingController searchC = new TextEditingController();
  final box = GetStorage();
  RxString searchQuery = ''.obs;
  RxBool isUpdate = false.obs;


  @override
  void onReady() {
     getData();
    super.onReady();
  }

  bool search(element){
    print("Element =>"+element.toString());
    if(searchQuery.value == ''){
      return true;
    }
    return element['ref'].toString().toLowerCase().contains(searchQuery.value.toLowerCase()) || element['lieu'].toString().toLowerCase().contains(searchQuery.value.toLowerCase())
        || element['address'].toString().toLowerCase().contains(searchQuery.value.toLowerCase()) ;
  }

  onSearch(String data){
    searchQuery.value = data;
  }

  getData() async{
    Dio.Response<dynamic> r  = await provider.all();
    if(r.statusCode == 200 &&  r.data.toString().startsWith("{")){
      data.value = Map<String,List<dynamic>>.from(r.data)  ;
    }

  }

  add() async {
    if(isValid()){
      Map<String,String> data = {
        "ref-dpt" : refC.text,
        "lieu" : lieuC.text,
        "adresse" : addressC.text
      };
      try {
        Dio.Response r = await provider.add(data);
        btnController.stop();
        print("RESPONSE : => "+  r.data.toString());
        if(r.statusCode == 200 &&  r.data.toString().startsWith("!success")){
          Get.snackbar("Erreur d'ajout", "Erreur lors d'ajout",snackPosition: SnackPosition.BOTTOM,backgroundColor: Constant.colorPrimary,colorText: Colors.white);
          return null;
        }
        else if(r.statusCode == 200 &&  r.data.toString().startsWith('success')){
          resetInput();
          return r.data.toString() ;
        }
        else{
          Get.snackbar("Erreur de la connexion", "Erreur lors de la connexion",snackPosition: SnackPosition.BOTTOM,backgroundColor: Constant.colorPrimary,colorText: Colors.white);
          return null;
        }
      }
      catch(e){
        return null;
      }
    }
    else{
      btnController.stop();
      Get.snackbar("Erreur", "Completer les champs obligatoires",snackPosition: SnackPosition.BOTTOM,backgroundColor: Constant.colorPrimary,colorText: Colors.white);
      return null;
    }

  }

  updateWarehouse(id) async {
    if(isValid()){
      Map<String,String> data = {
        "id-edit" : id,
        "ref-dpt-edit" : refC.text,
        "lieu-edit" : lieuC.text,
        "adresse-edit" : addressC.text
      };
      try {
        Dio.Response r = await provider.update(data);
        btnController.stop();
        print("RESPONSE : => "+  r.data.toString());
        if(r.statusCode == 200 &&  r.data.toString().startsWith("!success")){
          Get.snackbar("Erreur de modification", "Erreur survenu lors de la  modification",snackPosition: SnackPosition.BOTTOM,backgroundColor: Constant.colorPrimary,colorText: Colors.white);
          return null;
        }
        else if(r.statusCode == 200 &&  r.data.toString().startsWith('success')){
          resetInput();
          return data.toString() ;
        }
        else{
          Get.snackbar("Erreur de la connexion", "Erreur lors de la connexion",snackPosition: SnackPosition.BOTTOM,backgroundColor: Constant.colorPrimary,colorText: Colors.white);
          return null;
        }
      }
      catch(e){
        return null;
      }
    }
    else{
      btnController.stop();
      Get.snackbar("Erreur", "Completer les champs obligatoires",snackPosition: SnackPosition.BOTTOM,backgroundColor: Constant.colorPrimary,colorText: Colors.white);
      return null;
    }

  }
  delete(data) async {
    try {
      Dio.Response r = await provider.delete(data);
      btnController.stop();
      print("RESPONSE : => "+  r.data.toString());
      if(r.statusCode == 200 &&  r.data.toString().startsWith("!success")){
        Get.snackbar("Erreur de suppressio,", "Erreur lors de la suppression",snackPosition: SnackPosition.BOTTOM,backgroundColor: Constant.colorPrimary,colorText: Colors.white);
        return null;
      }
      else if(r.statusCode == 200 &&  r.data.toString().startsWith('success')){
        return r.data.toString() ;
      }
      else{
        Get.snackbar("Erreur de la connexion", "Erreur lors de la connexion",snackPosition: SnackPosition.BOTTOM,backgroundColor: Constant.colorPrimary,colorText: Colors.white);
        return null;
      }
    }
    catch(e){
      btnController.stop();
      print(e.toString());
      return null;
    }
  }

  bool isValid(){
    return refC.text.trim().length >= 4  && lieuC.text.trim().length >= 4 && addressC.text.trim().length >= 4;
  }
  resetInput(){
    refC.text = "";
    lieuC.text = "";
    addressC.text = "";

  }
}