import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:core';

Dio client(){
  Dio dio = Dio();
  dio.options.baseUrl = 'http://daxi.idealloan.com.ng';
  dio.options.connectTimeout = 10000;
  //dio.options.receiveTimeout = 10000;
  dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler)async{
        // options.headers["Accept"]='application/json';
        // options.headers['Content-Type']='application/json';
        SharedPreferences _prefs = await SharedPreferences.getInstance();
        var _token = _prefs.get('token');
        if(_token != null && !(_token =="" ) ){
          options.headers["Authorization"]= "Bearer $_token";
        }
        return handler.next(options);
      },
      onResponse: (response, handler){
        print('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
        return handler.next(response);
      },
      onError: (err, handler){
        print(
          'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}',
        );
        if (err.response?.statusCode ==403){
        }
        return handler.next(err);
      }
  ));
  return dio;
}