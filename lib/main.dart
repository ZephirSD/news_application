import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:news_application/composants/ButtonMenu.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: HexColor("#B7B7B7"),
        // appBar: AppBar(
        //   title: Text('Dédé'),
        //   backgroundColor: Colors.red,
        // ),
        body: News(),
      ),
    ),
  );
}

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  var _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 35),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  fillColor: HexColor('#d3d3d3'),
                  filled: true,
                  hintText: 'Recherche...',
                  hintStyle: GoogleFonts.montserrat(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _controller.clear();
                    },
                    icon: Icon(
                      FontAwesomeIcons.magnifyingGlass,
                      color: HexColor("#EF7676"),
                    ),
                  )),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ButtonMenu("Météo", HexColor("#d3d3d3"), Colors.black),
              ButtonMenu("Technologie", HexColor("#EF7676"), Colors.white),
              ButtonMenu("Santé", HexColor("#d3d3d3"), Colors.black),
              ButtonMenu("Faits divers", HexColor("#d3d3d3"), Colors.black),
            ],
          )
        ],
      ),
    );
  }
}
