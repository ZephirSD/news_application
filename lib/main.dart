import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: HexColor("#d3d3d3"),
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
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
