import 'package:dio_example/src/di/injection.dart';
import 'package:dio_example/src/models/auth/login/login_request_model.dart';
import 'package:dio_example/src/services/remote2/rest_service.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'auth_store.g.dart';

@singleton
class AuthStore extends _AuthStore with _$AuthStore {}

abstract class _AuthStore with Store {
  @observable
  bool hasAuth = false;

  @observable
  String? token;

  final List<ReactionDisposer> _reactions = [];

  late final _authClient = getIt<RestService>().auth;

  _AuthStore() {
    _reactions.add(reaction((reaction) => token, (token) {
      hasAuth = token != null;
    }));
  }

  @disposeMethod
  void dispose() {
    for (var element in _reactions) {
      element.call();
    }
  }

  @action
  Future<bool> login(LoginRequestModel requestModel) async {
    final response = await _authClient.login(requestModel);
    token = response?.token;
    return token != null;
  }
}
