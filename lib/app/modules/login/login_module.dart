import 'package:flutter_modular/flutter_modular.dart';
import 'package:guiadoaventureiro/app/modules/home/home_module.dart';
import 'package:guiadoaventureiro/app/modules/home/home_page.dart';
import 'package:guiadoaventureiro/app/modules/login/login_controller.dart';
import 'package:guiadoaventureiro/app/modules/login/login_page.dart';

class LoginModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => LoginController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => LoginPage()),
        Router('/home', child: (_, args) => HomePage(usuarioModel: args.data,)),
      ];

  static Inject get to => Inject<LoginModule>.of();
}
