

import 'package:dio/dio.dart';
import 'package:solutica/services/local_storage.dart';

class CafeApi{

  static final _dio = Dio();

  static void configureDio(){

    //se configura la base de la url
    _dio.options.baseUrl = 'http://localhost:8080/api';

    //se configuran los headers
    _dio.options.headers = {
      'xtoken': LocalStorage.prefs.getString('token') ?? ''
    };

  }

  // funcion para hacer una peticion http

  static Future httpGet( String path) async {
    try{

      final resp = await _dio.get(path);
      
      return resp.data;

    } catch (e){
      throw ' error en el get: $e';
    }


  }




}