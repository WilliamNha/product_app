import 'package:product_app/features/products/models/category_model.dart';

abstract class CategoryState {
  final List<CategoryModel>? categories;
  final String? error;

  const CategoryState({this.categories, this.error});
}

class CategoryLoading extends CategoryState {
  const CategoryLoading();
}

class CategoriesDone extends CategoryState {
  const CategoriesDone({required List<CategoryModel> categories}) : super(categories: categories);
}

class CategoryError extends CategoryState {
  const CategoryError({required String error}) : super(error: error);
}
