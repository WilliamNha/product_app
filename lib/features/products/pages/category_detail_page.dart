import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_app/config/theme/theme_color.dart';
import 'package:product_app/config/theme/theme_text.dart';
import 'package:product_app/features/products/bloc/product/product_bloc.dart';
import 'package:product_app/features/products/bloc/product/product_event.dart';
import 'package:product_app/features/products/bloc/product/product_state.dart';
import 'package:product_app/features/products/widgets/product_widget.dart';
import 'package:product_app/widgets/appbar/category_detail_appbar.dart';
import 'package:product_app/widgets/listeners/app_bloc_listener.dart';

class CategoryDetailPage extends StatefulWidget {
  final String categoryName;
  const CategoryDetailPage({super.key, required this.categoryName});

  @override
  State<CategoryDetailPage> createState() => _CategoryDetailPageState();
}

class _CategoryDetailPageState extends State<CategoryDetailPage> {
  @override
  void initState() {
    super.initState();
    context.read<ProductBloc>().add(GetProducts(category: widget.categoryName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.themeColor.bgColor,
      appBar: CategoryDetailAppbar(title: widget.categoryName),
      body: AppBlocListener<ProductBloc, ProductState>(
        child: BlocBuilder<ProductBloc, ProductState>(
          builder: (_, state) {
            if (state is ProductLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is ProductDone) {
              final products = state.productModel?.products;

              if (products?.isEmpty ?? true) {
                return Center(
                  child: Text(
                    'Sorry! This category is empty for now.... :(',
                    style: context.themeText.text14,
                  ),
                );
              }

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: products!.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                          childAspectRatio: 0.65,
                        ),
                        itemBuilder: (context, index) {
                          return ProductWidget(product: products[index]);
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
