import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COVIDTRACBOOK',
      home: CupertinoPageScaffold(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              CupertinoSliverNavigationBar(
                largeTitle: Text(
                  'COVIDTRACBOOK',
                  style: GoogleFonts.exo2(
                      color: Colors.black, fontWeight: FontWeight.normal),
                ),
                middle: Text(
                  ' A Covid19 Tracker Application',
                  style: GoogleFonts.exo2(color: Colors.black),
                ),
              )
            ];
          },
          body: Center(
            child: Column(),
          ),
        ),
      ),
    );
  }
}
