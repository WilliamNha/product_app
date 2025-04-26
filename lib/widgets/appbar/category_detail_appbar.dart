import 'package:flutter/material.dart';
import 'package:product_app/config/theme/colors_common.dart';
import 'package:product_app/config/theme/theme_color.dart';
import 'package:product_app/config/theme/theme_text.dart';

class CategoryDetailAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CategoryDetailAppbar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(40.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: ColorsCommon.white),
      backgroundColor: context.themeColor.priColor,
      leadingWidth: 40,
      elevation: 0,
      centerTitle: true,
      title: Text(
        title.toUpperCase(),
        style: context.themeText.text18Bold.copyWith(color: ColorsCommon.white),
      ),
    );
  }
}
