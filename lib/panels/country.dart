import 'package:covidtracbook/panels/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
    return MaterialApp(
        title: 'COVIDTRACBOOK',
        home: CupertinoPageScaffold(
            child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              CupertinoSliverNavigationBar(
                leading: Material(
                    child: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    showSearch(context: context, delegate: Search(countryData));
                  },
                )),
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
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
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
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                ),
                                Text(
                                  'ACTIVE:' +
                                      countryData[index]['active'].toString(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                                Text(
                                  'RECOVERED:' +
                                      countryData[index]['recovered']
                                          .toString(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green),
                                ),
                                Text(
                                  'DEATHS:' +
                                      countryData[index]['deaths'].toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? Colors.grey[100]
                                          : Colors.grey[900]),
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
