import 'package:flutter/material.dart';
import 'package:product_app/config/theme/colors_common.dart';
import 'package:product_app/config/theme/theme_color.dart';
import 'package:product_app/config/theme/theme_text.dart';
import 'package:product_app/localization.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(40.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: context.themeColor.priColor,
      leadingWidth: 40,
      leading: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: SizedBox(
          width: 10,
          height: 10,
          child: GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: const Icon(
              Icons.menu,
              color: ColorsCommon.white,
            ),
          ),
        ),
      ),
      elevation: 0,
      centerTitle: true,
      title: Text(
        context.trans.william_store,
        style: context.themeText.text18Bold.copyWith(color: ColorsCommon.white),
      ),
    );
  }
}
