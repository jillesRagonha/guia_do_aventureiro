import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:guiadoaventureiro/app/modules/login/widgets/background.dart';
import 'package:guiadoaventureiro/app/modules/login/widgets/login_button.dart';
import 'package:guiadoaventureiro/app/modules/login/widgets/login_text_field.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;

  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Background(),
          Positioned(
            top: mediaQuery.size.height * .3,
            bottom: 0,
            left: 0,
            right: 0,
            child: LoginTextField(
              onChange: (valorDigitado) =>
                  controller.usuarioModel.email = valorDigitado,
              hint: "Digite seu endereço",
              label: "Email",
              icon: Icons.email,
            ),
          ),
          Positioned(
            top: mediaQuery.size.height * .40,
            bottom: 0,
            left: 0,
            right: 0,
            child: LoginTextField(
              onChange: (valorDigitado) =>
                  controller.usuarioModel.senha = valorDigitado,
              hint: "Digite sua Senha",
              label: "Senha",
              icon: Icons.vpn_key,
              password: true,
            ),
          ),
          Positioned(
            top: mediaQuery.size.height * .51,
            left: 100,
            right: 100,
            child: RaisedButton(
              color: Colors.deepPurple[600].withOpacity(.6),
              onPressed: () {
                controller.fazerLoginGoogle();
//              controller.fazerLoginEmailSenha();
              },
              child: Text(
                "Entrar",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
          Positioned(
            top: mediaQuery.size.height * .20,
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Divider(
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: mediaQuery.size.height * .30,
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  LoginButton(
                    function: controller.fazerLoginGoogle,
                    color: Colors.transparent,
                    corIcone: Colors.red,
                    icon: FontAwesomeIcons.google,
                  ),
                  LoginButton(
                    function: controller.fazerLoginEmailSenha,
                    color: Colors.transparent,
                    corIcone: Colors.blue,
                    icon: FontAwesomeIcons.phone,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
