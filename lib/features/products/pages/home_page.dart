import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_app/config/theme/colors_common.dart';
import 'package:product_app/config/theme/theme_color.dart';
import 'package:product_app/config/theme/theme_text.dart';
import 'package:product_app/features/products/bloc/category_bloc.dart';
import 'package:product_app/features/products/bloc/category_event.dart';
import 'package:product_app/features/products/bloc/category_state.dart';
import 'package:product_app/widgets/appbar/main_appbar.dart';
import 'package:product_app/widgets/buttons/widget_button.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
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
              final catagories = state.categories;
              if (catagories?.isEmpty ?? true) return const SizedBox();

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      Text('Product Categories', style: context.themeText.text26Bold),
                      const SizedBox(height: 20),
                      ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (_, index) => const SizedBox(height: 20),
                        itemCount: catagories!.length,
                        itemBuilder: (context, index) {
                          final category = catagories[index];
                          return WidgetButton(
                            backgroundColor: ColorsCommon.transparent,
                            onPress: () {},
                            child: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: context.themeColor.chipBgColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                category.name ?? '',
                                style: const TextStyle(fontSize: 14),
                              ),
                            ),
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
