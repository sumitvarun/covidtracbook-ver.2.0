import 'package:covidtracbook/panels/search.dart';
import 'package:covidtracbook/screens/homepage_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(const CupertinoApp(
      home: HomePage(),
    ));

class CountryPage extends StatefulWidget {
  const CountryPage({Key? key}) : super(key: key);

  @override
  _CountryPageState createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  late List countryData;

  fetchCountryData() async {
    http.Response response =
        await http.get(Uri.parse('https://corona.lmao.ninja/v2/countries'));
    setState(() {
      countryData = json.decode(response.body);
    });
  }

  @override
  void initState() {
    fetchCountryData();
    super.initState();
  }

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
        title: 'COVIDTRACBOOK',
        home: CupertinoPageScaffold(
            child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              CupertinoSliverNavigationBar(
                leading: CupertinoButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: const Icon(
                    Icons.home_filled,
                    color: Colors.black,
                  ),
                ),
                trailing: CupertinoButton(
                  alignment: Alignment.centerRight,
                  onPressed: () {
                    showSearch(context: context, delegate: Search(countryData));
                  },
                  child: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
                backgroundColor: Colors.white,
                largeTitle: Text(
                  'COVIDTRACBOOK',
                  style: GoogleFonts.pacifico(
                    color: Colors.black,
                    fontWeight: FontWeight.w200,
                    fontSize: 18.0,
                  ),
                ),
                middle: Text(
                  'Covid19 WorldWide',
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
          // ignore: unnecessary_null_comparison
          body: countryData == null
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                      child: Container(
                        height: 130,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 200,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    countryData[index]['country'],
                                    style: GoogleFonts.quicksand(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      // fontSize: 18.0,
                                    ),
                                  ),
                                  Image.network(
                                    countryData[index]['countryInfo']['flag'],
                                    height: 50,
                                    width: 60,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                child: Column(
                              children: <Widget>[
                                Text(
                                  'CONFIRMED:' +
                                      countryData[index]['cases'].toString(),
                                  style: GoogleFonts.quicksand(
                                    color: const Color(0xffFF1700),
                                    fontWeight: FontWeight.bold,
                                    //fontSize: 12.0,
                                  ),
                                ),
                                Text(
                                  'ACTIVE:' +
                                      countryData[index]['active'].toString(),
                                  style: GoogleFonts.quicksand(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    //fontSize: 12.0,
                                  ),
                                ),
                                Text(
                                  'RECOVERED:' +
                                      countryData[index]['recovered']
                                          .toString(),
                                  style: GoogleFonts.quicksand(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    //fontSize: 12.0,
                                  ),
                                ),
                                Text(
                                  'DEATHS:' +
                                      countryData[index]['deaths'].toString(),
                                  style: GoogleFonts.quicksand(
                                    color: Colors.grey[900],
                                    fontWeight: FontWeight.bold,
                                    //fontSize: 12.0,
                                  ),
                                  //   style: TextStyle(
                                  //      fontWeight: FontWeight.bold,
                                  //     color: Theme.of(context).brightness ==
                                  //             Brightness.dark
                                  //         ? Colors.grey[100]
                                  //         : Colors.grey[900]),
                                ),
                              ],
                            ))
                          ],
                        ),
                      ),
                    );
                  },
                  // ignore: unnecessary_null_comparison
                  itemCount: countryData == null ? 0 : countryData.length,
                ),
        )));
  }
}
