import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class textFileFormGeneral extends StatelessWidget {
  final String labelText;
  final String? hintText;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final IconData? icon;
  final bool obscureText;
  const textFileFormGeneral({
    required this.labelText,
    this.hintText,
    required this.onChanged,
    this.keyboardType,
    this.icon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Material(
        elevation: 5.0, // Aquí agregamos la elevación para crear la sombra
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: TextField(
          style: GoogleFonts.dosis(fontWeight: FontWeight.w600),
          keyboardType: keyboardType,
          obscureText: obscureText,
          
          decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderSide:
                    BorderSide.none), // Aquí quitamos el borde del TextField
            prefixIcon: Icon(icon),
            // labelText: labelText,
            hintText: hintText,
          ),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
