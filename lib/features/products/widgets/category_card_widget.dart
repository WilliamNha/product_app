import 'package:flutter/material.dart';
import 'package:product_app/config/theme/theme_color.dart';
import 'package:product_app/config/theme/theme_text.dart';
import 'package:product_app/widgets/buttons/widget_button.dart';

class CategoryCardWidget extends StatelessWidget {
  final String? categoryName;
  final Function() onTap;
  const CategoryCardWidget({super.key, this.categoryName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return WidgetButton(
      onPress: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: context.themeColor.chipBgColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            categoryName ?? '',
            style: context.themeText.text14SemiBold,
          ),
        ),
      ),
    );
  }
}
