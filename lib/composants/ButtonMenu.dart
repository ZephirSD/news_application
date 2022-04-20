import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ButtonMenu extends StatelessWidget {
  final String text;
  final Color backColor;
  final Color textColor;

  ButtonMenu(this.text, this.backColor, this.textColor);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
        child: Text(text),
        onPressed: () {},
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          backgroundColor: backColor,
          // textStyle: TextStyle(fontFamily: GoogleFonts.montserrat(),)
          primary: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}
