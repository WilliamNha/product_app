// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../core/services/service_dio.dart' as _i277;
import '../features/products/bloc/category_bloc.dart' as _i283;
import '../features/products/repos/category_repo.dart' as _i895;
import '../features/products/usecases/get_categories_usecase.dart' as _i119;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final serviceDio = _$ServiceDio();
    gh.lazySingleton<_i361.Dio>(() => serviceDio.dio());
    gh.factory<_i895.CategoryRepo>(() => _i895.CategoryRepo(gh<_i361.Dio>()));
    gh.factory<_i119.GetCategoriesUsecase>(
        () => _i119.GetCategoriesUsecase(gh<_i895.CategoryRepo>()));
    gh.factory<_i283.CategoryBloc>(
        () => _i283.CategoryBloc(gh<_i119.GetCategoriesUsecase>()));
    return this;
  }
}

class _$ServiceDio extends _i277.ServiceDio {}
