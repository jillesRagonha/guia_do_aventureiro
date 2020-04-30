import 'package:guiadoaventureiro/app/modules/usuario/usuario_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:guiadoaventureiro/app/modules/usuario/usuario_page.dart';

class UsuarioModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => UsuarioController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => UsuarioPage()),
      ];

  static Inject get to => Inject<UsuarioModule>.of();
}
