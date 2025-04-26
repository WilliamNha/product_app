import 'package:injectable/injectable.dart';
import 'package:product_app/di/configure_dependencies.config.dart';
import 'package:product_app/di/di_instance.dart';

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() => getIt.init();
