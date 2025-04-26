import 'package:product_app/features/products/models/product_model.dart';

abstract class ProductState {
  final ProductModel? productModel;
  final String? error;

  ProductState({this.productModel, this.error});
}

class ProductLoading extends ProductState {
  ProductLoading();
}

class ProductDone extends ProductState {
  ProductDone({required ProductModel productModel}) : super(productModel: productModel);
}

class ProductError extends ProductState {
  ProductError({required String error}) : super(error: error);
}
