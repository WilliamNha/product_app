import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:product_app/config/routes/app_routes.dart';
import 'package:product_app/core/bloc/locale/local_state.dart';
import 'package:product_app/core/bloc/locale/locale_bloc.dart';
import 'package:product_app/core/bloc/theme/theme_bloc.dart';
import 'package:product_app/core/bloc/theme/theme_state.dart';
import 'package:product_app/di/configure_dependencies.dart';
import 'package:product_app/di/di_instance.dart';
import 'package:product_app/features/products/bloc/category/category_bloc.dart';
import 'package:product_app/features/products/bloc/product/product_bloc.dart';
import 'package:product_app/features/products/pages/home_page.dart';
import 'package:product_app/features/products/usecases/get_categories_usecase.dart';
import 'package:product_app/features/products/usecases/get_products_usecase.dart';

void main() {
  configureDependencies();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CategoryBloc(
            getIt<GetCategoriesUsecase>(),
          ),
        ),
        BlocProvider(
          create: (context) => ProductBloc(
            getIt<GetProductsUsecase>(),
          ),
        ),
        BlocProvider(
          create: (context) => LocaleBloc(),
        ),
        BlocProvider(
          create: (context) => ThemeBloc(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        final theme = state.themeData;
        return BlocBuilder<LocaleBloc, LocaleState>(
          builder: (context, state) {
            final locale = state.locale;
            return MaterialApp(
              title: 'Product App',
              debugShowCheckedModeBanner: false,
              theme: theme,
              locale: locale,
              onGenerateRoute: AppRoutes.onGenerateRoutes,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              home: const HomePage(),
            );
          },
        );
      },
    );
  }
}
