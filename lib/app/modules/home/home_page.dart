import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:guiadoaventureiro/app/modules/home/widgets/home_background.dart';
import 'package:guiadoaventureiro/app/modules/home/widgets/home_card.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({
    Key key,
    this.title = "Home",
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Text(
            controller.usuarioModel.nome,
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          HomeBackground(),
          Positioned(
            top: mediaQuery.size.height * .1,
            left: 5,
            child: CircleAvatar(
              minRadius: 30,
              backgroundImage: NetworkImage(controller.usuarioModel.foto),
            ),
          ),
          Positioned(
            top: mediaQuery.size.height * .1,
            left: 70,
            child: Container(
              child: Center(
                child: Text(
                  "Bem Vindo  ${controller.usuarioModel.nome}",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ),
          ),
          Positioned(
            top: mediaQuery.size.height * .14,
            left: 70,
            child: Container(
              child: Center(
                child: Text(
                  "Quem você será hoje?",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ),
          ),
          Positioned(
            top: mediaQuery.size.height * .3,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.0),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              width: mediaQuery.size.width,
              height: mediaQuery.size.height,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  HomeCard(
                    imagem: "assets/images/Ulfric.jpeg",
                    nome: "Ulfric",
                  ),
                  HomeCard(
                    imagem: "assets/images/Calina.jpg",
                    nome: "Calina",
                  ),
                  HomeCard(
                    imagem: "assets/images/bron.jpg",
                    nome: "Bron",
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.exposure_plus_1),
      ),
    );
  }
}
