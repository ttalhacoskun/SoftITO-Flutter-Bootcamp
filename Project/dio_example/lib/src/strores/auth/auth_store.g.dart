// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthStore on _AuthStore, Store {
  late final _$hasAuthAtom = Atom(name: '_AuthStore.hasAuth', context: context);

  @override
  bool get hasAuth {
    _$hasAuthAtom.reportRead();
    return super.hasAuth;
  }

  @override
  set hasAuth(bool value) {
    _$hasAuthAtom.reportWrite(value, super.hasAuth, () {
      super.hasAuth = value;
    });
  }

  late final _$tokenAtom = Atom(name: '_AuthStore.token', context: context);

  @override
  String? get token {
    _$tokenAtom.reportRead();
    return super.token;
  }

  @override
  set token(String? value) {
    _$tokenAtom.reportWrite(value, super.token, () {
      super.token = value;
    });
  }

  late final _$loginAsyncAction =
      AsyncAction('_AuthStore.login', context: context);

  @override
  Future<bool> login(LoginRequestModel requestModel) {
    return _$loginAsyncAction.run(() => super.login(requestModel));
  }

  @override
  String toString() {
    return '''
hasAuth: ${hasAuth},
token: ${token}
    ''';
  }
}
