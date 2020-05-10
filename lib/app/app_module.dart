import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:guiadoaventureiro/app/app_controller.dart';
import 'package:guiadoaventureiro/app/app_widget.dart';
import 'package:guiadoaventureiro/app/core/firebase/interfaces/auth_repository_interface.dart';
import 'package:guiadoaventureiro/app/core/firebase/repositories/auth_repository.dart';
import 'package:guiadoaventureiro/app/modules/home/home_controller.dart';
import 'package:guiadoaventureiro/app/modules/home/home_module.dart';
import 'package:guiadoaventureiro/app/modules/login/login_controller.dart';
import 'package:guiadoaventureiro/app/modules/usuario/usuario_model.dart';

import 'modules/login/login_module.dart';

class AppModule extends MainModule {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  UsuarioModel usuarioModel = UsuarioModel();

  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => HomeController(usuarioModel: usuarioModel)),
        Bind((i) => LoginController(usuarioModel: usuarioModel)),
              Bind<IAuthRepository>((i) => AuthRepository(firebaseAuth)),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: LoginModule()),
        Router('/home', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
