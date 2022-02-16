import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VaccineSearch extends SearchDelegate {
  final List vaccineList;

  VaccineSearch(this.vaccineList);

  @override
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? vaccineList
        : vaccineList
            .where((element) =>
                element['country'].toString().toLowerCase().startsWith(query))
            .toList();

    return ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      // width: 200,
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
                          // Image.network(
                          //   suggestionList[index]['countryInfo']['flag'],
                          //   height: 50,
                          //   width: 60,
                          // ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      child: Column(
                    children: <Widget>[
                      Text(
                        'Timeline:',
                        // + suggestionList[index]['timeline'].toString(),
                        style: GoogleFonts.quicksand(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          //fontSize: 12.0,
                        ),
                      ),

                      Text(
                        // 'Timeline:' +
                        suggestionList[index]['timeline'].toString(),
                        style: GoogleFonts.quicksand(
                          color: const Color(0xffFF1700),
                          fontWeight: FontWeight.bold,
                          //fontSize: 12.0,
                        ),
                      ),
                      // Text(
                      //  'Daily:' + suggestionList[index]['daily'].toString(),
                      //   style: const TextStyle(
                      //        fontWeight: FontWeight.bold, color: Colors.blue),
                      //   ),
                      //   Text(
                      //     'TotalPerHundred:' +
                      ////         suggestionList[index]['totalPerHundred']
                      //            .toString(),
                      //    style: const TextStyle(
                      //        fontWeight: FontWeight.bold, color: Colors.green),
                      //  ),
                      //  Text(
                      //    'DailyPerMillion:' +
                      //        suggestionList[index]['dailyPerMillion']
                      //            .toString(),
                      //    style: TextStyle(
                      //        fontWeight: FontWeight.bold,
                      //        color: Theme.of(context).brightness ==
                      //                Brightness.dark
                      //            ? Colors.grey[100]
                      //            : Colors.grey[900]),
                      //  ),
                    ],
                  ))
                ],
              ),
            ),
          );
        });
  }
}
