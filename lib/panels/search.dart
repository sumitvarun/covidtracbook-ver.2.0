import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends SearchDelegate {
  final List countryList;

  Search(this.countryList);

  @override
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      CupertinoButton(
          child: const Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: const Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? countryList
        : countryList
            .where((element) =>
                element['country'].toString().toLowerCase().startsWith(query))
            .toList();

    return ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              height: 130,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 200,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          suggestionList[index]['country'],
                          style: GoogleFonts.quicksand(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            //fontSize: 12.0,
                          ),
                        ),
                        Image.network(
                          suggestionList[index]['countryInfo']['flag'],
                          height: 50,
                          width: 60,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'CONFIRMED:' +
                              suggestionList[index]['cases'].toString(),
                          style: GoogleFonts.quicksand(
                            color: const Color(0xffFF1700),
                            fontWeight: FontWeight.bold,
                            //fontSize: 12.0,
                          ),
                        ),
                        Text(
                          'ACTIVE:' +
                              suggestionList[index]['active'].toString(),
                          style: GoogleFonts.quicksand(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            //fontSize: 12.0,
                          ),
                        ),
                        Text(
                          'RECOVERED:' +
                              suggestionList[index]['recovered'].toString(),
                          style: GoogleFonts.quicksand(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            //fontSize: 12.0,
                          ),
                        ),
                        Text(
                          'DEATHS:' +
                              suggestionList[index]['deaths'].toString(),
                          style: GoogleFonts.quicksand(
                            color: Colors.grey[900],
                            fontWeight: FontWeight.bold,
                            //fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),
          );
        });
  }
}
