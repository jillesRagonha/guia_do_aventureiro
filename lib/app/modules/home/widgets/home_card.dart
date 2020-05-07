import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guiadoaventureiro/app/modules/home/widgets/card_background_image.dart';

class HomeCard extends StatelessWidget {
  final String imagem;
  final String nome;

  const HomeCard({Key key, this.imagem, this.nome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Card(
      margin: EdgeInsets.only(
          top: mediaQuery.size.height * .05,
          bottom: mediaQuery.size.height * .4,
          left: 30,
          right: 30),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Stack(children: [
        CardBackgroundImage(imagem: imagem,),

        Positioned(
          top: 10,

          left: 10,
          child: Text(
            nome.toUpperCase(),
            style: GoogleFonts.caveat(textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: Colors.white,
                shadows: [
                  Shadow(
                    offset: Offset(5.0, 5.0),
                    blurRadius: 5.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  Shadow(
                    offset: Offset(10.0, 10.0),
                    blurRadius: 8.0,
                    color: Color.fromARGB(125, 0, 0, 0),
                  )
                ]),)
          ),
        ),
      ]),
    );
  }
}
