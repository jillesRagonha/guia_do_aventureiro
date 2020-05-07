import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginTextField extends StatelessWidget {
  final String hint;
  final String label;
  final IconData icon;
  final bool password;
  final Function onChange;

  LoginTextField(
      {this.hint, this.label, this.icon, this.password = false, this.onChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        onChanged: onChange,
        style: GoogleFonts.pacifico(textStyle: TextStyle(color: Colors.white)),
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          filled: true,
          fillColor: Colors.white.withOpacity(0.2),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.white),
          labelText: label,
          labelStyle: TextStyle(color: Colors.white),
        ),
        obscureText: password,
      ),
    );
  }
}
