import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:supper/library/client.dart';

class DioHaddemine{
  final Dio dio=Dio();
  static const baseURL="http://sup-er-app.herokuapp.com/apis";
  static const Resgisterendpoint= baseURL +"/registerclient/";

  Future<Client> fetchPrduit(String nom, String prenom, String email,String username,String password, String telephone,String sexe,String description,String adresse) async{
    try{
      final response = await dio.post(Resgisterendpoint, data: {'nom': nom, 'prenom': prenom,'email':email,'username':username,'password':password,'telephone':telephone,'sexe':sexe,'description':description,'adresse':adresse});
      debugPrint(response.toString());
      return Client.fromJSON(response.data);
    } on DioError catch(e){
      debugPrint("status code : ${e.response?.statusCode.toString()}");
      throw Exception("Failed");
    }
  }
}

// Future<String> apiRequest(String url, Map<String,dynamic> data) async {
//   HttpClient httpClient = new HttpClient();
//   HttpClientRequest request = await httpClient.postUrl(Uri.parse(url));
//   request.headers.set('content-type', 'application/json');
//   HttpClientResponse response = await request.close();
//   httpClient.close();
//   return 'bon';
// }

// Future<Post> createPost() async {
//   final url = "http://localhost:8000/api/login";
//   Map<String, String> body = {
//     'user': user.text,
//     'pass': pass.text,
//   };
//   await http.post(url, body: body);
//   print(body);
//
//   return http.;


// var client = http.Client();
// try {
// var response = await client.post(
// Uri.https('example.com', 'whatsit/create'),
// body: {'name': 'doodle', 'color': 'blue'});
// var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
// var uri = Uri.parse(decodedResponse['uri'] as String);
// print(await client.get(uri));
// } finally {
// client.close();
// }

