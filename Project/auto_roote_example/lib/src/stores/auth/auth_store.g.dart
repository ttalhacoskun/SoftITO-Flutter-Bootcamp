// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthStore on _AuthStore, Store {
  late final _$isLoggedinAtom =
      Atom(name: '_AuthStore.isLoggedin', context: context);

  @override
  bool get isLoggedin {
    _$isLoggedinAtom.reportRead();
    return super.isLoggedin;
  }

  @override
  set isLoggedin(bool value) {
    _$isLoggedinAtom.reportWrite(value, super.isLoggedin, () {
      super.isLoggedin = value;
    });
  }

  late final _$_AuthStoreActionController =
      ActionController(name: '_AuthStore', context: context);

  @override
  dynamic setLoggedIn(bool isLoggedin) {
    final _$actionInfo = _$_AuthStoreActionController.startAction(
        name: '_AuthStore.setLoggedIn');
    try {
      return super.setLoggedIn(isLoggedin);
    } finally {
      _$_AuthStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoggedin: ${isLoggedin}
    ''';
  }
}
