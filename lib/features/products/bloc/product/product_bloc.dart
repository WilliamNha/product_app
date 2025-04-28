import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:product_app/features/products/bloc/product/product_event.dart';
import 'package:product_app/features/products/bloc/product/product_state.dart';
import 'package:product_app/features/products/usecases/get_products_usecase.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetProductsUsecase _getProductsUsecase;

  ProductBloc(this._getProductsUsecase) : super(const ProductLoading()) {
    on<GetProducts>((event, emit) async {
      final category = event.category;

      emit(const ProductLoading());
      try {
        final productModel = await _getProductsUsecase.call(params: category);
        emit(ProductDone(productModel: productModel));
      } on DioException catch (dioError) {
        emit(ProductError(error: dioError.message ?? "Something went wrong"));
      } catch (e) {
        emit(ProductError(error: e.toString()));
      }
    });
  }
}
