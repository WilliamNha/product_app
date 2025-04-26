import 'package:flutter/material.dart';
import 'package:product_app/features/products/pages/category_detail_page.dart';
import 'package:product_app/features/products/pages/home_page.dart';

class AppRoutes {
  static const String home = '/';
  static const String categoryDetails = '/CategoryDetails';

  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return _materialRoute(const HomePage());
      case categoryDetails:
        return _materialRoute(CategoryDetailPage(categoryName: settings.arguments as String));
      default:
        return _materialRoute(const HomePage());
    }
  }

  static Route<dynamic> _materialRoute(Widget page) {
    return MaterialPageRoute(builder: (context) => page);
  }
}
