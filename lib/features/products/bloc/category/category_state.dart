import 'package:product_app/core/resources/base_state.dart';
import 'package:product_app/features/products/models/category_model.dart';

abstract class CategoryState extends BaseState {
  const CategoryState();
}

class CategoryLoading extends CategoryState implements LoadingState {
  const CategoryLoading();
}

class CategoriesDone extends CategoryState implements SuccessState {
  final List<CategoryModel>? categories;
  const CategoriesDone({required this.categories});
}

class CategoryError extends CategoryState implements ErrorState {
  final String? error;
  const CategoryError({required this.error});

  @override
  String? get errorMessage => error;
}
