import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../configs/apis/apis.dart';
import '../../utils/utils.dart';

class BaseApiProvider {
  final Map? options;

  BaseApiProvider({Key? key, this.options});

  // Use this only for testing purposes
  // Read local json responses saved in assets/responses directory
  Future<Map<String, dynamic>> readJson({required String jsonPath}) async {
    final String response = await rootBundle.loadString(jsonPath);
    final Map<String, dynamic> responseData = await json.decode(response);
    return responseData;
  }

  Dio get backendApiReq {
    BaseOptions options = BaseOptions(
      baseUrl: BackendApis.baseUrl,
      connectTimeout: const Duration(milliseconds: 30000),
      receiveTimeout: const Duration(milliseconds: 15000),
      validateStatus: (status) => status! < 700, // TODO
    );

    Dio dio = Dio(options);

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          options.headers['Content-Type'] = 'application/json';

          return handler.next(options);
        },
        onResponse: (response, handler) {
          try {
            logger.d(response.data.runtimeType);

            // if (response.data['error'] != null) {
            //   // final _error = ExceptionModel(
            //   //   message: '',
            //   //   errors: response.data['error'],
            //   // );

            //   // throw DioError(
            //   //   requestOptions: response.requestOptions,
            //   //   error: _error,
            //   // );
            //   throw response.data['error'];
            // }
          } catch (e) {
            logger.d(runtimeType, '${e.runtimeType}::${e.toString()}');

            throw DioError(
              requestOptions: response.requestOptions,
              error: e,
            );
          }
          handler.next(response);
        },
        onError: (DioError e, handler) {
          final _path = e.requestOptions.path;
          logger.w('HTTP request/response error! {Path: $_path}', e);

          handler.next(e);
        },
      ),
    );
    dio.interceptors.add(
      LogInterceptor(requestBody: true, responseBody: true, request: true),
    );

    return dio;
  }
}
