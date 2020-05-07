import 'package:flutter/material.dart';

class CardBackgroundImage extends StatelessWidget {
  final String imagem;

  const CardBackgroundImage({Key key, this.imagem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return  Container(
      width: mediaQuery.size.width * .8,
      height: mediaQuery.size.height * .6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image:
        DecorationImage(image: AssetImage(imagem), fit: BoxFit.cover),
      ),
    );
  }
}
