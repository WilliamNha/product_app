import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_app/config/theme/app_theme.dart';
import 'package:product_app/di/configure_dependencies.dart';
import 'package:product_app/di/di_instance.dart';
import 'package:product_app/features/products/bloc/category_bloc.dart';
import 'package:product_app/features/products/pages/home_page.dart';
import 'package:product_app/features/products/usecases/get_categories_usecase.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product App',
      theme: AppTheme.light,
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CategoryBloc(
              getIt<GetCategoriesUsecase>(),
            ),
          ),
        ],
        child: const HomePage(),
      ),
    );
  }
}
