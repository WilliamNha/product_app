import 'package:product_app/core/resources/base_state.dart';
import 'package:product_app/features/products/models/product_model.dart';

abstract class ProductState extends BaseState {
  const ProductState();
}

class ProductLoading extends ProductState implements LoadingState {
  const ProductLoading();
}

class ProductDone extends ProductState implements SuccessState {
  final ProductModel? productModel;
  const ProductDone({required this.productModel});
}

class ProductError extends ProductState implements ErrorState {
  final String? error;
  ProductError({required this.error});

  @override
  String? get errorMessage => error;
}
