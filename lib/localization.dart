import 'package:flutter/material.dart';
import 'package:product_app/localization.dart';

export 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension AppLocalization on BuildContext {
  AppLocalizations get trans => AppLocalizations.of(this)!;
}
