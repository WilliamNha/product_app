import 'package:flutter/material.dart';

abstract class LocaleEvent {
  const LocaleEvent();
}

class ChangeLanguage extends LocaleEvent {
  final Locale locale;
  ChangeLanguage({required this.locale});
}
