import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_app/config/theme/colors_common.dart';
import 'package:product_app/config/theme/theme_color.dart';
import 'package:product_app/config/theme/theme_text.dart';
import 'package:product_app/core/bloc/locale/local_state.dart';
import 'package:product_app/core/bloc/locale/locale_bloc.dart';
import 'package:product_app/core/bloc/locale/locale_event.dart';
import 'package:product_app/gen/assets.gen.dart';
import 'package:product_app/localization.dart';
import 'package:product_app/widgets/buttons/widget_button.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleBloc, LocaleState>(
      builder: (context, state) {
        return SizedBox(
          width: 200,
          child: Drawer(
            backgroundColor: context.themeColor.bgColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  Center(
                    child: Text(
                      context.trans.language,
                      style: context.themeText.text18Medium,
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildLanguageIcon(
                    context: context,
                    isThaiFlag: true,
                    onPressed: () {
                      context.read<LocaleBloc>().add(ChangeLanguage(locale: const Locale('th')));
                    },
                  ),
                  const SizedBox(height: 20),
                  _buildLanguageIcon(
                    context: context,
                    isThaiFlag: false,
                    onPressed: () {
                      context.read<LocaleBloc>().add(ChangeLanguage(locale: const Locale('en')));
                    },
                  ),
                  const SizedBox(height: 30),
                  Text(
                    context.trans.setting,
                    style: context.themeText.text18Medium,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildLanguageIcon({
    required bool isThaiFlag,
    required BuildContext context,
    required Function() onPressed,
  }) {
    return WidgetButton(
      backgroundColor: ColorsCommon.transparent,
      onPress: () {
        onPressed();
        Navigator.pop(context);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          isThaiFlag
              ? Assets.images.thaiFlag.image(width: 30)
              : Assets.images.usaFlag.image(width: 30),
          const SizedBox(width: 10),
          Text(
            isThaiFlag ? 'ไทย' : 'English',
            style: context.themeText.text14,
          )
        ],
      ),
    );
  }
}
