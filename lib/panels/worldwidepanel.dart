import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                      title: 'Confirmed',
                      counttextcolor: Color(0xffFF1700),
                      image:
                          'https://img.icons8.com/ios/500/000000/coronavirus--v2.gif'),
                ),
                Expanded(
                  child: StatusPanel(
                      count: worldData['active'].toString(),
                      //    panelColor: const Color(0xff161853),
                      textColor: const Color(0xff2A6171),
                      title: 'Active',
                      counttextcolor: Color(0xff0F00FF),
                      image:
                          'https://img.icons8.com/ios/500/000000/sneeze--v2.gif'),
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
                      title: 'Recovered',
                      counttextcolor: Color(0xff125C13),
                      image:
                          'https://img.icons8.com/ios-glyphs/500/000000/trust--v2.gif'),
                ),
                Expanded(
                  child: StatusPanel(
                      count: worldData['affectedCountries'].toString(),
                      //  panelColor: const Color(0xff161853),
                      textColor: const Color(0xff2A6171),
                      title: 'Countries',
                      counttextcolor: Color(0xffff3d00),
                      image:
                          'https://img.icons8.com/ios-filled/500/000000/worldwide-location--v2.gif'),
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
                      title: 'Tests',
                      counttextcolor: Color(0xffF34573),
                      image:
                          'https://img.icons8.com/color/480/000000/pcr-test--v2.gif'),
                ),
                Expanded(
                  child: StatusPanel(
                      count: worldData['deaths'].toString(),
                      // panelColor: const Color(0xff161853),
                      textColor: const Color(0xff2A6171),
                      title: 'Deaths',
                      counttextcolor: Color(0xff4A403A),
                      image:
                          'https://img.icons8.com/ios-glyphs/480/000000/death--v2.gif'),
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
  final String image;
  const StatusPanel(
      {Key? key,
      // required this.panelColor,
      required this.textColor,
      required this.counttextcolor,
      required this.title,
      required this.image,
      required this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.all(5.0),
      height: 100,
      //  width: width / 2,
      //color: panelColor,
      decoration: BoxDecoration(
          //color: const Color(0xffD7F7F5),
          // color: const Color(0xffE5E8E8),
          // color: const Color(0xffEEEEEE),
          color: Colors.white,

          // boxShadow: const [
          //background color of box
          //   BoxShadow(
          //     color: Color(0xffADFD02),
          //     blurRadius: 10.0, // soften the shadow
          //     spreadRadius: 1.0, //extend the shadow
          //     blurStyle: BlurStyle.normal
          //     //  offset: Offset(
          //    15.0, // Move to right 10  horizontally
          //    15.0, // Move to bottom 10 Vertically
          //   ),
          //     )
          //  ],
          borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Image(
              //height: 30.0,
              image: NetworkImage(image),
            ),
          ),
          Text(
            title,
            style: GoogleFonts.ubuntu(
              color: textColor,
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
            ),
          ),
          Text(
            count,
            style: GoogleFonts.quicksand(
              color: counttextcolor,
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
