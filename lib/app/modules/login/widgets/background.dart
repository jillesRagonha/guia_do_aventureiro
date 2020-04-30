import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Container(
      height: mediaQuery.size.height,
      width: mediaQuery.size.width,
      child: Image.asset(
        "assets/images/background.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
}
