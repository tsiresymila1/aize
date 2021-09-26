import 'dart:convert';

import 'package:aize/utils/data.dart';
import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';


class ProductProvider {
  var box = GetStorage();
  get user => jsonDecode(box.read('auth')!);
  Future<Response> add(Map<String, String> data) => Dio().get(Constant.URL+'/produit/create/'+user['id'],queryParameters:data);
  Future<Response> all() => Dio().get(Constant.URL+'/produit/all/'+user['id']);
  Future<Response> update(Map<String, String> data) => Dio().get(Constant.URL+'/produit/update/'+user['id'],queryParameters: data);
  Future<Response> delete(data) => Dio().get(Constant.URL+'/produit/delete/'+user['id'],queryParameters: data);
}