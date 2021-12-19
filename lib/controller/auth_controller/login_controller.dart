import 'dart:convert';
import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycab_user/constance/constance.dart';
import 'package:mycab_user/models/auth/Login_auth_model.dart';
import 'package:mycab_user/modules/home/home_screen.dart';
import 'package:mycab_user/services/auth/auth_services.dart';
import 'package:mycab_user/utils/custom_progress_dialog.dart';
import 'package:mycab_user/utils/flush_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController{
  final TextEditingController _phoneController = TextEditingController();
  TextEditingController get phoneController => _phoneController;
  String countryCode = "+91";

  void checkLoginConnectivity() async{
    FocusScope.of(Get.context!).unfocus();
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (!(connectivityResult == ConnectivityResult.none)) {
      loginUser();
    } else {
      alertBar(Get.context!, "No Internet Connection", ConstanceData.red, false, const Icon(Icons.error_outline, color: ConstanceData.white,));
    }
  }

  loginUser() async {
    CustomProgressDialog().show();
    try{
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      if(phoneController.text.startsWith("0")){
        final phone = countryCode + phoneController.text.toString().substring(1);
        await AuthServices().loginUser(phone: phone.toString()).then((value){
          final response = jsonDecode(value.toString());
          final loginResponseModel = loginResponseModelFromJson(value.toString());
          _prefs.setString('token', loginResponseModel.token);
          print(loginResponseModel);
          print(response);
          CustomProgressDialog().hide();
          Get.offAll(()=>const HomeScreen());
        });
      }
    }on DioError catch (e){
      CustomProgressDialog().hide();
      if (e.response != null){
        alertBar(Get.context!, e.response!.data["error"], ConstanceData.red, false, const Icon(Icons.error_outline, color: ConstanceData.white));
      }else if (e.type == DioErrorType.connectTimeout){
        alertBar(Get.context!, "Network Timeout! Please, try again!", ConstanceData.red, false, const Icon(Icons.error_outline, color: ConstanceData.white));
      }else{
        alertBar(Get.context!, e.message.toString(), ConstanceData.red, false, const Icon(Icons.error_outline, color: ConstanceData.white));
      }
    }
  }
}