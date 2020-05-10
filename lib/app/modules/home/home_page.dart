import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:guiadoaventureiro/app/modules/home/widgets/home_background.dart';
import 'package:guiadoaventureiro/app/modules/home/widgets/home_card.dart';
import 'package:guiadoaventureiro/app/modules/usuario/usuario_model.dart';
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
          HomeBackground(),
          Positioned(
            top: mediaQuery.size.height * .3,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
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
