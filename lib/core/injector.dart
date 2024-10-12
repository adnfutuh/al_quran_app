import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injector.config.dart';

@InjectableInit(
  initializerName: r'$initGetIt',
)
Future<void> configureDependencies() async {
  final getIt = GetIt.instance;
  getIt.$initGetIt();
}
