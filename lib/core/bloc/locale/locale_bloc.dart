import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_app/core/bloc/locale/local_state.dart';
import 'package:product_app/core/bloc/locale/locale_event.dart';

class LocaleBloc extends Bloc<LocaleEvent, LocaleState> {
  LocaleBloc() : super(const LocaleState(Locale('en'))) {
    on<ChangeLanguage>((event, emit) {
      emit(LocaleState(event.locale));
    });
  }
}
