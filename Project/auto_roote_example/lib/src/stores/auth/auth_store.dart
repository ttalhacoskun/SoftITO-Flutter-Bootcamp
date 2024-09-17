import 'package:auto_roote_example/src/di/injection.dart';
import 'package:auto_roote_example/src/services/local/shared_prefs.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'auth_store.g.dart';

@singleton
class AuthStore extends _AuthStore with _$AuthStore {}

abstract class _AuthStore with Store {
  @observable
  bool isLoggedin = false;

  late final service = getIt<SharedPrefsService>();
  _AuthStore() {
    Future.microtask(() async {
      await service.init();
      setLoggedIn(service.read('isLoggedin') ?? false);
    });
  }

  @action
  setLoggedIn(bool isLoggedin) {
    this.isLoggedin = isLoggedin;
    service.write('isLoggedin', isLoggedin);
  }
}
