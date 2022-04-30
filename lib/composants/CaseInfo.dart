import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class CaseInfo extends StatelessWidget {
  final String titre;
  final String source;
  CaseInfo(this.titre, this.source);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: HexColor("#d3d3d3"),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  child: Text(
                    titre,
                    style: GoogleFonts.montserrat(fontSize: 15),
                  ),
                )
              ],
            ),
            Container(
              // color: Colors.amber,
              margin: EdgeInsets.only(top: 25),
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 25, 0, 25),
                child: Text(
                  source,
                  style: GoogleFonts.montserrat(fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
