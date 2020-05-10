import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:guiadoaventureiro/app/core/firebase/interfaces/auth_repository_interface.dart';
import 'package:guiadoaventureiro/app/core/firebase/responses/response_status.dart';
import 'package:mobx/mobx.dart';

import '../usuario/usuario_model.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {

  UsuarioModel usuarioModel;

  _LoginControllerBase({this.usuarioModel});

  FirebaseUser user;

  @action
  Future<void> fazerLoginEmailSenha() async {}

  @action
  Future<void> fazerLoginComTelefone() async {}

  @action
  Future<void> fazerLoginGoogle() async {
    await Modular.get<IAuthRepository>().doLoginGoogle().then((resultado) {
      if (resultado.status == ResponseStatus.SUCESSO) {
        usuarioModel = converterFirebaseUserEmModel(resultado.objeto);
        Modular.to.pushNamed('/home');
      } else {
        print("FALHA -----> ${resultado.toString()}");
      }
    });
  }

  UsuarioModel converterFirebaseUserEmModel(FirebaseUser user) {
    if (usuarioModel == null) {
      usuarioModel = UsuarioModel();

    }
    usuarioModel.nome = user.displayName;
    usuarioModel.email = user.email;
    usuarioModel.foto = user.photoUrl;
    return usuarioModel;
  }
}
