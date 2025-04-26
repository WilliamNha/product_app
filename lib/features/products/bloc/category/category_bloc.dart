import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:product_app/features/products/bloc/category/category_event.dart';
import 'package:product_app/features/products/bloc/category/category_state.dart';
import 'package:product_app/features/products/usecases/get_categories_usecase.dart';

@injectable
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final GetCategoriesUsecase _getCategoriesUsecase;

  CategoryBloc(this._getCategoriesUsecase) : super(const CategoryLoading()) {
    on<GetCategories>((event, emit) async {
      emit(const CategoryLoading());
      try {
        final categories = await _getCategoriesUsecase.call();
        emit(CategoriesDone(categories: categories));
      } on DioException catch (dioError) {
        emit(CategoryError(error: dioError.message ?? "Something went wrong"));
      } catch (e) {
        emit(CategoryError(error: e.toString()));
      }
    });
  }
}
