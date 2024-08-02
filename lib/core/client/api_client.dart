import 'dart:io';

import 'package:classroom/core/core.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';

class ApiClient {
  ApiClient() {
    initClient();
  }

  late Dio dio;

  late BaseOptions _baseOptions;

  initClient() async {
    _baseOptions = BaseOptions(
        baseUrl: UrlConst.baseUrl,
        connectTimeout: const Duration(milliseconds: 30000),
        receiveTimeout: const Duration(milliseconds: 100000),
        followRedirects: true,
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
          HttpHeaders.acceptHeader: 'application/json',
        },
        responseType: ResponseType.json,
        receiveDataWhenStatusError: true);

    dio = Dio(_baseOptions);

    dio.httpClientAdapter = IOHttpClientAdapter(
      createHttpClient: () {
        final client = HttpClient();
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) {
          return true; // Verify the certificate.
        };
        return client;
      },
    );

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (reqOptions, handler) {
        reqOptions.queryParameters.addAll({'api_key': 'CbedB'});
        return handler.next(reqOptions);
      },
      onError: (DioException dioError, handler) {
        return handler.next(dioError);
      },
    ));
  }
}
