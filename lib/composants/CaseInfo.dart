import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class CaseInfo extends StatelessWidget {
  final String titre;
  final String source;
  CaseInfo(this.titre, this.source);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Container(
        width: double.infinity,
        height: 270,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: HexColor("#d3d3d3"),
        ),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 120,
          ),
          children: [
            Container(
              // color: Colors.yellow,
              padding: EdgeInsets.fromLTRB(55, 20, 55, 0),
              child: SizedBox(
                width: 80,
                height: 80,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            Container(
              // color: Colors.red,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Center(
                child: Text(
                  titre,
                  style: GoogleFonts.montserrat(fontSize: 15),
                ),
              ),
            ),
            Container(
              // color: Colors.purple,
              padding: EdgeInsets.only(left: 25),
              child: Align(
                alignment: FractionalOffset.bottomLeft,
                child: Text(
                  source,
                  style: GoogleFonts.montserrat(fontSize: 15),
                ),
              ),
            ),
          ],
          shrinkWrap: true,
        ),
      ),
    );
  }
}
