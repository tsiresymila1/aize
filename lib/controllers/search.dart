import 'dart:convert';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SearchController extends GetxController {
    var isSearhing = false.obs;
    getUser(){
        Map<String, dynamic > data = jsonDecode(GetStorage().read('auth'));
        return data;
    }
}