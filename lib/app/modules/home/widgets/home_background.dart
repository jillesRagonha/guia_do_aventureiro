import 'package:flutter/material.dart';

class HomeBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Container(
      height: mediaQuery.size.height,
      width: mediaQuery.size.width,
      child: Image.asset(
        "assets/images/home_background.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
