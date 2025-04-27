import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ServiceDio {
  @lazySingleton
  Dio dio() {
    final dio = Dio();
    dio.options.connectTimeout = const Duration(seconds: 7);
    dio.interceptors.add(LogInterceptor());
    return dio;
  }
}
