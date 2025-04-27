import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_app/config/theme/app_theme.dart';
import 'package:product_app/core/bloc/theme/theme_event.dart';
import 'package:product_app/core/bloc/theme/theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(AppTheme.light)) {
    on<ToggleTheme>((event, emit) {
      emit(ThemeState(state.themeData == AppTheme.light ? AppTheme.dark : AppTheme.light));
    });
  }
}
