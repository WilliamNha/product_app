import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_app/config/theme/colors_common.dart';
import 'package:product_app/config/theme/theme_color.dart';
import 'package:product_app/config/theme/theme_text.dart';
import 'package:product_app/features/products/bloc/category/category_bloc.dart';
import 'package:product_app/features/products/bloc/category/category_event.dart';
import 'package:product_app/features/products/bloc/category/category_state.dart';
import 'package:product_app/features/products/widgets/category_card_widget.dart';
import 'package:product_app/localization.dart';
import 'package:product_app/widgets/appbar/main_appbar.dart';
import 'package:product_app/widgets/drawer/app_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<CategoryBloc>().add(const GetCategories());
  }

  void goToCategoryDetailPage(String name) {
    Navigator.pushNamed(context, '/CategoryDetails', arguments: name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      backgroundColor: context.themeColor.bgColor,
      appBar: const HomeAppbar(),
      body: BlocListener<CategoryBloc, CategoryState>(
        listenWhen: (previous, state) => state is CategoryError,
        listener: (context, state) {
          if (state is CategoryError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error ?? ''),
                backgroundColor: ColorsCommon.red,
              ),
            );
          }
        },
        child: BlocBuilder<CategoryBloc, CategoryState>(
          builder: (context, state) {
            if (state is CategoryLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is CategoriesDone) {
              final catagories = state.categories ?? [];
              if (catagories.isEmpty) return const SizedBox();

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      Text(context.trans.product_category, style: context.themeText.text26Bold),
                      const SizedBox(height: 20),
                      GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: catagories.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                          childAspectRatio: 1.4,
                        ),
                        itemBuilder: (context, index) {
                          final category = catagories[index];
                          return CategoryCardWidget(
                            onTap: () => goToCategoryDetailPage(category.name ?? ''),
                            categoryName: category.name,
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              );
            }

            return const SizedBox();
          },
        ),
      ),
    );
  }
}
