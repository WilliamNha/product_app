import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_app/config/theme/colors_common.dart';
import 'package:product_app/core/resources/base_state.dart';

class AppBlocListener<B extends BlocBase<S>, S extends BaseState> extends StatelessWidget {
  final Widget child;
  const AppBlocListener({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<B, S>(
      listener: (context, state) {
        if (state is ErrorState && state.errorMessage != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage!),
              backgroundColor: ColorsCommon.red,
            ),
          );
        }
      },
      listenWhen: (context, current) => current is ErrorState,
      child: child,
    );
  }
}
