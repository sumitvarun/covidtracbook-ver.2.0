import 'dart:convert';

import 'package:covidtracbook/panels/country.dart';
import 'package:covidtracbook/panels/helpbook.dart';
import 'package:covidtracbook/panels/mostaffectedpanel.dart';
import 'package:covidtracbook/panels/search.dart';
import 'package:covidtracbook/panels/vaccine.dart';
import 'package:covidtracbook/panels/worldwidepanel.dart';
import 'package:covidtracbook/widgets/carousel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Map worldData;
  fetchWorldWideData() async {
    http.Response response =
        await http.get(Uri.parse('https://disease.sh/v3/covid-19/all'));
    setState(() {
      worldData = json.decode(response.body);
    });
  }

  late List countryData;
  fetchCountryData() async {
    http.Response response = await http
        .get(Uri.parse('https://corona.lmao.ninja/v2/countries?sort=cases'));
    setState(() {
      countryData = json.decode(response.body);
    });
  }

  @override
  void initState() {
    fetchWorldWideData();
    fetchData();
    super.initState();
  }

  Future fetchData() async {
    fetchWorldWideData();
    fetchCountryData();
    // ignore: avoid_print
    print('fetchData called');
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //    statusBarColor: Colors.white,
    //   systemNavigationBarColor: Colors.white,
    //    systemNavigationBarDividerColor: Colors.white));
    return MaterialApp(
      title: 'COVIDTRACBOOK',
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
                      //   IconButton(
                      //      onPressed: () {
                      //        Navigator.push(
                      //          context,
                      //         MaterialPageRoute(
                      //             builder: (context) => const HomePage()),
                      //      );
                      //     },
                      //     icon: const Icon(
                      //       Icons.home,
                      //       color: Colors.black,
                      //    )),
                      IconButton(
                        icon: const Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          showSearch(
                              context: context, delegate: Search(countryData));
                        },
                      ),
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
                child: RefreshIndicator(
                  onRefresh: fetchData,
                  child: SingleChildScrollView(
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Text(
                            'WORLDWIDE',
                            style: GoogleFonts.exo(
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                              fontSize: 18.0,
                            ),
                          ),
                          // ignore: unnecessary_null_comparison
                          worldData == null
                              ? const CircularProgressIndicator(
                                  backgroundColor: Colors.red,
                                )
                              : WorldWidePanel(widget, worldData: worldData),

                          Text(
                            'Most Affected Countries',
                            style: GoogleFonts.exo(
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                              fontSize: 18.0,
                            ),
                          ),

                          // ignore: unnecessary_null_comparison
                          countryData == null
                              ? Container()
                              : MostAffectedPanel(countryData: countryData),
                          TextButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const questionAnswer()),
                              );
                            },
                            icon: const Icon(Icons.coronavirus_outlined),
                            label: const Text('Helpbook'),
                          ),
                          TextButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const CountryPage()),
                              );
                            },
                            icon: const Icon(Icons.coronavirus_outlined),
                            label: const Text('Regional'),
                          ),
                          TextButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const VaccinePage()),
                              );
                            },
                            icon: const Icon(Icons.coronavirus_outlined),
                            label: const Text('Vaccine'),
                          ),

                          //coursel image start

                          //coursel image end
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
