import 'package:covidtracbook/panels/datasource.dart';
import 'package:covidtracbook/panels/search.dart';
import 'package:covidtracbook/screens/homepage_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(questionAnswer());

// ignore: camel_case_types
class questionAnswer extends StatelessWidget {
  const questionAnswer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        systemNavigationBarColor: Colors.white,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarDividerColor: Colors
            .white)); //Change App Statusbar style :  Status Bar | Bottom Navigation Bar Color | Statusbar text color
    return MaterialApp(
        title: 'Covidtracbook',
        home: CupertinoPageScaffold(
          backgroundColor: Colors.white,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                CupertinoSliverNavigationBar(
                  leading: Material(
                      child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()),
                            );
                          },
                          icon: const Icon(
                            Icons.home,
                            color: Colors.black,
                          )),
                    ],
                  )),
                  //----------------------------------------
                  backgroundColor: Colors.white,
                  largeTitle: Text(
                    'COVIDTRACBOOK',
                    style: GoogleFonts.pacifico(
                      color: Colors.black,
                      fontWeight: FontWeight.w200,
                      fontSize: 18.0,
                    ),
                  ),
                  //middle: Text(
                  // ' A Covid19 Tracker Application',
                  //style: GoogleFonts.exo2(color: Colors.black),
                  // ),
                )
              ];
            },
            body: Material(
              child: SafeArea(
                  child: Container(
                color: Colors.white,
                child: ListView.builder(
                    itemCount: List.filled(26, null, growable: false).length,
                    itemBuilder: (context, index) {
                      return ExpansionTile(
                        title: Text(
                          DataSource.questionAnswer[index]["question"],
                          style: GoogleFonts.quicksand(
                              color: Colors.black,
                              // fontFamily: 'Circular',
                              fontWeight: FontWeight.bold),
                        ),
                        children: [
                          Container(
                            margin: const EdgeInsets.all(18.0),
                            child: Text(
                              DataSource.questionAnswer[index]['answer'],
                              style: GoogleFonts.quicksand(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      );
                    }),
              )),
            ),
          ),
        ));
  }
}
