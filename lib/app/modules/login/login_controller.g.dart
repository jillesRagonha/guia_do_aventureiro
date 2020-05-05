// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginControllerBase, Store {
  final _$usuarioModelAtom = Atom(name: '_LoginControllerBase.usuarioModel');

  @override
  UsuarioModel get usuarioModel {
    _$usuarioModelAtom.context.enforceReadPolicy(_$usuarioModelAtom);
    _$usuarioModelAtom.reportObserved();
    return super.usuarioModel;
  }

  @override
  set usuarioModel(UsuarioModel value) {
    _$usuarioModelAtom.context.conditionallyRunInAction(() {
      super.usuarioModel = value;
      _$usuarioModelAtom.reportChanged();
    }, _$usuarioModelAtom, name: '${_$usuarioModelAtom.name}_set');
  }

  final _$fazerLoginEmailSenhaAsyncAction = AsyncAction('fazerLoginEmailSenha');

  @override
  Future<void> fazerLoginEmailSenha() {
    return _$fazerLoginEmailSenhaAsyncAction
        .run(() => super.fazerLoginEmailSenha());
  }

  final _$fazerLoginComTelefoneAsyncAction =
      AsyncAction('fazerLoginComTelefone');

  @override
  Future<void> fazerLoginComTelefone() {
    return _$fazerLoginComTelefoneAsyncAction
        .run(() => super.fazerLoginComTelefone());
  }

  final _$fazerLoginGoogleAsyncAction = AsyncAction('fazerLoginGoogle');

  @override
  Future<void> fazerLoginGoogle() {
    return _$fazerLoginGoogleAsyncAction.run(() => super.fazerLoginGoogle());
  }

  @override
  String toString() {
    final string = 'usuarioModel: ${usuarioModel.toString()}';
    return '{$string}';
  }
}
