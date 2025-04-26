abstract class ProductEvent {
  const ProductEvent();
}

class GetProducts extends ProductEvent {
  final String category;
  GetProducts({required this.category});
}
