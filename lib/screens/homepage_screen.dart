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
                backgroundColor: Colors.transparent,
                largeTitle: Text(
                  'COVIDTRACBOOK',
                  style: GoogleFonts.exo2(
                      color: Colors.black, fontWeight: FontWeight.normal),
                ),
                //middle: Text(
                // ' A Covid19 Tracker Application',
                //style: GoogleFonts.exo2(color: Colors.black),
                // ),
              )
            ];
          },
          body: SafeArea(
            child: Center(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 100.0,
                          decoration: const BoxDecoration(color: Colors.red),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 100.0,
                          decoration: const BoxDecoration(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 100.0,
                          decoration: const BoxDecoration(color: Colors.green),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 100.0,
                          decoration:
                              const BoxDecoration(color: Colors.deepOrange),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 100.0,
                          decoration: const BoxDecoration(color: Colors.yellow),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          height: 100.0,
                          decoration: const BoxDecoration(color: Colors.indigo),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
