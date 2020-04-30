import 'package:guiadoaventureiro/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:guiadoaventureiro/app/app_widget.dart';
import 'package:guiadoaventureiro/app/modules/usuario/usuario_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),

      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: UsuarioModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
