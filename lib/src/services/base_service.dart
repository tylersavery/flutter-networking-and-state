import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

enum HttpMethod {
  get,
  post,
  patch,
  delete,
}

class BaseService {
  BaseOptions get _options {
    return BaseOptions(
      baseUrl: "https://6594177b1493b0116069e718.mockapi.io/api/v1",
      headers: {
        HttpHeaders.contentTypeHeader: "application/json",
        HttpHeaders.acceptHeader: "application/json",
      },
    );
  }

  String _cleanPath(String path) {
    if (!path.endsWith("/")) {
      return "$path/";
    }

    return path;
  }

  Future<Either<String, Map<String, dynamic>>> _handle({
    required HttpMethod method,
    required String path,
    Map<String, dynamic> data = const {},
  }) async {
    try {
      late Response<dynamic> response;
      switch (method) {
        case HttpMethod.get:
          response = await Dio(_options).get(
            _cleanPath(path),
            queryParameters: data,
          );
        case HttpMethod.post:
          response = await Dio(_options).post(
            _cleanPath(path),
            data: data,
          );
        case HttpMethod.patch:
          response = await Dio(_options).patch(
            _cleanPath(path),
            data: data,
          );
        case HttpMethod.delete:
          response = await Dio(_options).delete(
            _cleanPath(path),
          );
      }

      return right({'data': response.data});
    } catch (e) {
      return left(e.toString());
    }
  }

  Future<Either<String, Map<String, dynamic>>> get(
    String path, {
    Map<String, dynamic> data = const {},
  }) {
    return _handle(method: HttpMethod.get, path: path, data: data);
  }

  Future<Either<String, Map<String, dynamic>>> post(
    String path, {
    Map<String, dynamic> data = const {},
  }) {
    return _handle(method: HttpMethod.post, path: path, data: data);
  }

  Future<Either<String, Map<String, dynamic>>> patch(
    String path, {
    Map<String, dynamic> data = const {},
  }) {
    return _handle(method: HttpMethod.patch, path: path, data: data);
  }

  Future<Either<String, Map<String, dynamic>>> delete(String path) {
    return _handle(method: HttpMethod.delete, path: path);
  }
}
