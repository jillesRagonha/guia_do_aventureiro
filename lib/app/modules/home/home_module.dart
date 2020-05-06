import 'package:flutter_modular/flutter_modular.dart';
import 'package:guiadoaventureiro/app/modules/home/home_controller.dart';
import 'package:guiadoaventureiro/app/modules/home/home_page.dart';
import 'package:guiadoaventureiro/app/modules/usuario/usuario_model.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(usuarioModel: i.get<UsuarioModel>())),
      ];

  @override
  List<Router> get routers => [
        Router('/home', child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
