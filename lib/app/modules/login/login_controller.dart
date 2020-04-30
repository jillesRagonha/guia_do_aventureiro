import 'package:flutter_modular/flutter_modular.dart';
import 'package:guiadoaventureiro/app/core/firebase/interfaces/auth_repository_interface.dart';
import 'package:guiadoaventureiro/app/core/firebase/responses/response_status.dart';
import 'package:mobx/mobx.dart';

import '../usuario/usuario_model.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @observable
  UsuarioModel usuarioModel = UsuarioModel();

  @action
  Future<void> fazerLoginEmailSenha() async {

  }

  @action
  Future<void> fazerLoginGoogle() async {
    await Modular.get<IAuthRepository>().doLoginGoogle().then((resultado) {
      if (resultado.status == ResponseStatus.SUCESSO) {
        print("Sucesso -----> ${resultado.mensagem}");
      } else {
        print("FALHA -----> ${resultado.toString()}");
      }
    });
  }
}
