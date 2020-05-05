import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Color corIcone;
  final Function function;

  LoginButton({this.icon, this.color, this.function, this.corIcone});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white.withOpacity(0.5),
      child: Container(
        width: 30,
        height: 30,
        child: Material(
          color: color,
          child: InkWell(
            onTap: function,
            child: Center(
              child: FaIcon(
                icon,
                color: corIcone,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
