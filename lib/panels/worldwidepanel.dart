import 'package:flutter/material.dart';

class WorldWidePanel extends StatelessWidget {
  const WorldWidePanel(Widget widget, {Key? key, required this.worldData})
      : super(key: key);
  final Map worldData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: StatusPanel(
                count: worldData['cases'].toString(),
                panelColor: const Color(0xffF76E11),
                textColor: const Color(0xffFBF8F1),
                title: 'Confirmed',
              ),
            ),
            Expanded(
              child: StatusPanel(
                count: worldData['active'].toString(),
                panelColor: const Color(0xffF76E11),
                textColor: const Color(0xffFBF8F1),
                title: 'Active',
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: StatusPanel(
                count: worldData['recovered'].toString(),
                panelColor: const Color(0xffF76E11),
                textColor: const Color(0xffFBF8F1),
                title: 'Recovered',
              ),
            ),
            Expanded(
              child: StatusPanel(
                count: worldData['countries'].toString(),
                panelColor: const Color(0xffF76E11),
                textColor: const Color(0xffFBF8F1),
                title: 'Countries',
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: StatusPanel(
                count: worldData['tests'].toString(),
                panelColor: const Color(0xffF76E11),
                textColor: const Color(0xffFBF8F1),
                title: 'Tests',
              ),
            ),
            Expanded(
              child: StatusPanel(
                count: worldData['deaths'].toString(),
                panelColor: const Color(0xffF76E11),
                textColor: const Color(0xffFBF8F1),
                title: 'Deaths',
              ),
            ),
          ],
        )
      ],
    );
  }
}

class StatusPanel extends StatelessWidget {
  final Color panelColor;
  final Color textColor;
  final String title;
  final String count;

  const StatusPanel(
      {Key? key,
      required this.panelColor,
      required this.textColor,
      required this.title,
      required this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.all(10),
      height: 80,
      width: width / 2,
      color: panelColor,
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
                fontSize: 16, fontWeight: FontWeight.bold, color: textColor),
          )
        ],
      ),
    );
  }
}
