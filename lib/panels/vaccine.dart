import 'package:covidtracbook/panels/vaccine_search.dart';
import 'package:covidtracbook/screens/homepage_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class VaccinePage extends StatefulWidget {
  const VaccinePage({Key? key}) : super(key: key);

  @override
  _VaccinePageState createState() => _VaccinePageState();
}

class _VaccinePageState extends State<VaccinePage> {
  late List countryData;
  late List vaccineData;

  fetchCountryData() async {
    http.Response response =
        await http.get(Uri.parse('https://corona.lmao.ninja/v2/countries'));
    setState(() {
      countryData = json.decode(response.body);
    });
  }

  fetchVaccineData() async {
    http.Response response = await http.get(Uri.parse(
        'https://disease.sh/v3/covid-19/vaccine/coverage/countries?lastdays=30&fullData=false'));
    setState(() {
      vaccineData = json.decode(response.body);
    });
  }

  @override
  void initState() {
    fetchCountryData();
    fetchVaccineData();
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
                    IconButton(
                      icon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        showSearch(
                            context: context,
                            delegate: VaccineSearch(vaccineData));
                      },
                    ),
                  ],
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
          body: vaccineData == null
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                // width: 200,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      vaccineData[index]['country'],
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
                            ),
                            Expanded(
                                child: Column(
                              children: <Widget>[
                                Text(
                                  'Timeline:' +
                                      vaccineData[index]['timeline'].toString(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                ),
                                //     Text(
                                //     'Total:' +
                                //          vaccineData[index]['timeline']['total']
                                //              .toString(),
                                //      style: const TextStyle(
                                //          fontWeight: FontWeight.bold,
                                //          color: Colors.green),
                                //    ),
                                //    Text(
                                //      'daily:' +
                                //         vaccineData[index]['timeline']['daily']
                                //             .toString(),
                                //      style: TextStyle(
                                //         fontWeight: FontWeight.bold,
                                //         color: Theme.of(context).brightness ==
                                //                 Brightness.dark
                                //             ? Colors.grey[100]
                                //            : Colors.grey[900]),
                                //   ),
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
