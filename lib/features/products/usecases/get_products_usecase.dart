import 'package:injectable/injectable.dart';
import 'package:product_app/core/usecases/usecase.dart';
import 'package:product_app/features/products/models/product_model.dart';
import 'package:product_app/features/products/repos/category_repo.dart';

@injectable
class GetProductsUsecase implements UseCase<ProductModel, String> {
  final CategoryRepo _categoryRepo;
  GetProductsUsecase(this._categoryRepo);

  @override
  Future<ProductModel> call({String? params}) {
    return _categoryRepo.getProducts(params);
  }
}
