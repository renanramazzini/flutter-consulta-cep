// ignore_for_file: avoid_print

import 'package:dio/dio.dart';

import '../models/cep_model.dart';

class HomeRepository {
  final Dio _dio;

  HomeRepository(this._dio);

  Future<CEPModel> search(String cep) async {
    try {
      var response = await _dio.get('http://viacep.com.br/ws/$cep/json/');
      return CEPModel.fromJson(response.data);
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
