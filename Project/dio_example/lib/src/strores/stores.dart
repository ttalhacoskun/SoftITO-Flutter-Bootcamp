import 'package:dio_example/src/di/injection.dart';
import 'package:dio_example/src/strores/auth/auth_store.dart';

class Stores {
  static AuthStore get auth => getIt<AuthStore>();
}
