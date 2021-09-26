import 'dart:convert';

import 'package:aize/utils/data.dart';
import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';


class WarehouseProvider {
  var box = GetStorage();
  get user => jsonDecode(box.read('auth')!);
  Future<Response> add(Map<String, String> data) => Dio().get(Constant.URL+'/depot/create/'+user['id'],queryParameters:data);
  Future<Response> all() => Dio().get(Constant.URL+'/depot/all/'+user['id']);
  Future<Response> update(Map<String, String> data) => Dio().get(Constant.URL+'/depot/update/'+user['id'],queryParameters: data);
  Future<Response> delete(data) => Dio().get(Constant.URL+'/depot/delete/'+user['id'],queryParameters: data);
}