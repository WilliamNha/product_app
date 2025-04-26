import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ServiceDio {
  @lazySingleton
  Dio dio() => Dio();
}
