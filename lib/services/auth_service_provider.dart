import 'package:aize/utils/data.dart';
import 'package:dio/dio.dart';

// class AuthProvider extends GetConnect {
//   Future<Response> signup(Map data) => post(Constant.URL+'/admin/create',data);
//   Future<Response> login(Map<String, String> data) => post(Constant.URL+'/admin/signIn',data,headers: data);
// }

class AuthProvider {
  Future<Response> signup(Map<String, String> data) => Dio().get(Constant.URL+'/admin/create',queryParameters:data);
  Future<Response> login(Map<String, String> data) => Dio().get(Constant.URL+'/admin/signIn',queryParameters: data);
}