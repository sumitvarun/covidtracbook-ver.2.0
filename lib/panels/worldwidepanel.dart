import 'package:flutter/material.dart';

class WorldWidePanel extends StatelessWidget {
  const WorldWidePanel(Widget widget, {Key? key, required this.worldData})
      : super(key: key);
  final Map worldData;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: StatusPanel(
                    count: worldData['cases'].toString(),
                    //    panelColor: const Color(0xff161853),
                    textColor: const Color(0xff2A6171),
                    title: 'Confirmed', counttextcolor: Color(0xffFF1700),
                  ),
                ),
                Expanded(
                  child: StatusPanel(
                    count: worldData['active'].toString(),
                    //    panelColor: const Color(0xff161853),
                    textColor: const Color(0xff2A6171),
                    title: 'Active', counttextcolor: Color(0xff0F00FF),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: StatusPanel(
                    count: worldData['recovered'].toString(),
                    //  panelColor: const Color(0xff161853),
                    textColor: const Color(0xff2A6171),
                    title: 'Recovered', counttextcolor: Color(0xff125C13),
                  ),
                ),
                Expanded(
                  child: StatusPanel(
                    count: worldData['affectedCountries'].toString(),
                    //  panelColor: const Color(0xff161853),
                    textColor: const Color(0xff2A6171),
                    title: 'Countries', counttextcolor: Color(0xffff3d00),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: StatusPanel(
                    count: worldData['tests'].toString(),
                    //  panelColor: const Color(0xff161853),
                    textColor: const Color(0xff2A6171),
                    title: 'Tests', counttextcolor: Color(0xffF34573),
                  ),
                ),
                Expanded(
                  child: StatusPanel(
                    count: worldData['deaths'].toString(),
                    // panelColor: const Color(0xff161853),
                    textColor: const Color(0xff2A6171),
                    title: 'Deaths', counttextcolor: Color(0xff4A403A),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class StatusPanel extends StatelessWidget {
  //final Color panelColor;
  final Color textColor;
  final Color counttextcolor;
  final String title;
  final String count;
  const StatusPanel(
      {Key? key,
      // required this.panelColor,
      required this.textColor,
      required this.counttextcolor,
      required this.title,
      required this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.all(5.0),
      height: 40,
      //  width: width / 2,
      //color: panelColor,
      decoration: BoxDecoration(
          color: const Color(0xffD7F7F5),
          borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: textColor),
          ),
          Text(
            count,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: counttextcolor),
          )
        ],
      ),
    );
  }
}
