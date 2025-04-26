import 'package:injectable/injectable.dart';
import 'package:product_app/core/usecases/usecase.dart';
import 'package:product_app/features/products/models/category_model.dart';
import 'package:product_app/features/products/repos/category_repo.dart';

@injectable
class GetCategoriesUsecase implements UseCase<List<CategoryModel>, void> {
  final CategoryRepo _categoryRepo;
  GetCategoriesUsecase(this._categoryRepo);

  @override
  Future<List<CategoryModel>> call({void params}) {
    return _categoryRepo.getCategories();
  }
}
