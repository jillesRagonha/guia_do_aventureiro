import 'package:flutter_modular/flutter_modular.dart';
import 'package:guiadoaventureiro/app/modules/login/login_controller.dart';
import 'package:guiadoaventureiro/app/modules/usuario/usuario_model.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  UsuarioModel usuarioModel;

  _HomeControllerBase({this.usuarioModel}) {
    print("----------> Entrei no HomeController<---------------" +
        usuarioModel.toString());
  }
}
