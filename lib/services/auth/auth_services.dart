import 'package:dio/dio.dart';
import 'package:mycab_user/services/network/dio_client.dart';

class AuthServices{
  late Dio dioClient;

  AuthServices(){
    dioClient = client();
  }


  Future <Response?> loginUser({required String phone}) async{
    var formData = FormData.fromMap({"phone": phone});
    final response = await dioClient.post("/api/login", data: formData);
    return response;
  }

  Future <Response?> signUpUser({required String phone, required String email}) async{
    var formData = FormData.fromMap({"phone": phone, "email": email});
    final response = await dioClient.post("/api/userRegister", data: formData);
    return response;
  }

}