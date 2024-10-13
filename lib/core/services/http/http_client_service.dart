import 'package:al_quran_app/core/exeptions/app_exception.dart';
import 'package:al_quran_app/core/services/internet/internet_connection_sevice.dart';
import 'package:al_quran_app/core/services/logger/logger.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:injectable/injectable.dart';

import '../../env/env.dart';

abstract class HttpClientService {
  Future<Response> get({
    required String path,
    Map<String, dynamic>? queryParameter,
    Options? options,
  });
  Future<Response> post({
    required String path,
    required dynamic data,
    Map<String, dynamic>? queryParameter,
    Options? options,
  });
  Future<Response> put({
    required String path,
    required dynamic data,
    Map<String, dynamic>? queryParameter,
    Options? options,
  });
  Future<Response> patch({
    required String path,
    required dynamic data,
    Map<String, dynamic>? queryParameter,
    Options? options,
  });
  Future<Response> delete({
    required String path,
    required dynamic data,
    Map<String, dynamic>? queryParameter,
    Options? options,
  });
}

@Named('base')
class HttpClientServiceImpl implements HttpClientService {
  final Dio dio;
  final InternetConnectionService internetConnectionService;
  final LoggerService loggerService;

  HttpClientServiceImpl({
    @Named('base') required this.dio,
    required this.internetConnectionService,
    required this.loggerService,
  }) {
    if (Env.showDebugInfo) {
      dio.interceptors.addAll([
        PrettyDioLogger(
          requestBody: true,
          responseBody: true,
          responseHeader: true,
          requestHeader: true,
          compact: false,
        )
      ]);
    }
  }
  @override
  Future<Response> delete(
      {required String path,
      required data,
      Map<String, dynamic>? queryParameter,
      Options? options}) async {
    try {
      await internetConnectionService.checkConnectivityState();
      final response = await dio.delete(
        path,
        data: data,
        queryParameters: queryParameter,
        options: options,
      );

      return response;
    } on InternetConnectionException catch (e, trace) {
      loggerService.error(error: e, stackTrace: trace);
      rethrow;
    } on DioException catch (e, trace) {
      loggerService.error(error: e, stackTrace: trace);
      throw ServerException(
        message: (e.response?.statusCode).toString(),
        code: e.toString(),
        error: e.response?.data,
      );
    }
  }

  @override
  Future<Response> get(
      {required String path,
      Map<String, dynamic>? queryParameter,
      Options? options}) async {
    try {
      await internetConnectionService.checkConnectivityState();
      final response = await dio.delete(
        path,
        queryParameters: queryParameter,
        options: options,
      );

      return response;
    } on InternetConnectionException catch (e, trace) {
      loggerService.error(error: e, stackTrace: trace);
      rethrow;
    } on DioException catch (e, trace) {
      loggerService.error(error: e, stackTrace: trace);
      throw ServerException(
        message: (e.response?.statusCode).toString(),
        code: e.toString(),
        error: e.response?.data,
      );
    }
  }

  @override
  Future<Response> patch(
      {required String path,
      required data,
      Map<String, dynamic>? queryParameter,
      Options? options}) async {
    try {
      await internetConnectionService.checkConnectivityState();
      final response = await dio.delete(
        path,
        data: data,
        queryParameters: queryParameter,
        options: options,
      );

      return response;
    } on InternetConnectionException catch (e, trace) {
      loggerService.error(error: e, stackTrace: trace);
      rethrow;
    } on DioException catch (e, trace) {
      loggerService.error(error: e, stackTrace: trace);
      throw ServerException(
        message: (e.response?.statusCode).toString(),
        code: e.toString(),
        error: e.response?.data,
      );
    }
  }

  @override
  Future<Response> post(
      {required String path,
      required data,
      Map<String, dynamic>? queryParameter,
      Options? options}) async {
    try {
      await internetConnectionService.checkConnectivityState();
      final response = await dio.delete(
        path,
        data: data,
        queryParameters: queryParameter,
        options: options,
      );

      return response;
    } on InternetConnectionException catch (e, trace) {
      loggerService.error(error: e, stackTrace: trace);
      rethrow;
    } on DioException catch (e, trace) {
      loggerService.error(error: e, stackTrace: trace);
      throw ServerException(
        message: (e.response?.statusCode).toString(),
        code: e.toString(),
        error: e.response?.data,
      );
    }
  }

  @override
  Future<Response> put(
      {required String path,
      required data,
      Map<String, dynamic>? queryParameter,
      Options? options}) async {
    try {
      await internetConnectionService.checkConnectivityState();
      final response = await dio.delete(
        path,
        data: data,
        queryParameters: queryParameter,
        options: options,
      );

      return response;
    } on InternetConnectionException catch (e, trace) {
      loggerService.error(error: e, stackTrace: trace);
      rethrow;
    } on DioException catch (e, trace) {
      loggerService.error(error: e, stackTrace: trace);
      throw ServerException(
        message: (e.response?.statusCode).toString(),
        code: e.toString(),
        error: e.response?.data,
      );
    }
  }
}

@Named('client')
@LazySingleton(as: HttpClientService)
class HttpClientServiceImplClient extends HttpClientServiceImpl {
  HttpClientServiceImplClient({
    @Named('client') required super.dio,
    required super.internetConnectionService,
    required super.loggerService,
  });
}
