import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:guiadoaventureiro/app/modules/usuario/usuario_model.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  final UsuarioModel usuarioModel;

  const HomePage({Key key, this.title = "Home", this.usuarioModel})
      : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Text(widget.usuarioModel.nome),
          CircleAvatar(
            child: Image.network(controller.usuarioModel.foto),
          )
        ],
      ),
    );
  }
}
