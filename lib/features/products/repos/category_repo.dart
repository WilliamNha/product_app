import 'package:dio/dio.dart' hide Headers;
import 'package:injectable/injectable.dart';
import 'package:product_app/core/constants/app_constants.dart';
import 'package:product_app/features/products/models/category_model.dart';
import 'package:retrofit/retrofit.dart';

part 'category_repo.g.dart';

@injectable
@RestApi(baseUrl: AppConstants.baseUrl)
abstract class CategoryRepo {
  @factoryMethod
  factory CategoryRepo(Dio dio) = _CategoryRepo;

  @GET('/categories')
  @Headers(<String, dynamic>{
    'Accept': 'application/ecmascript',
    'Content-Type': 'application/json',
  })
  Future<List<CategoryModel>> getCategories();
}
