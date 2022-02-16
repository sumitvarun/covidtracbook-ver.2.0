import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MostAffectedPanel extends StatelessWidget {
  final List countryData;

  const MostAffectedPanel({Key? key, required this.countryData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: const Color(0xff99A3A4), width: 0.5)),
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: <Widget>[
                  Image.network(
                    countryData[index]['countryInfo']['flag'],
                    height: 25,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    countryData[index]['country'],
                    style: GoogleFonts.ubuntu(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    // 'Deaths: ' + countryData[index]['deaths'].toString(),
                    'Deaths: ',
                    style: GoogleFonts.quicksand(
                      color: const Color(0xff424949),
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    countryData[index]['deaths'].toString(),
                    style: GoogleFonts.quicksand(
                      color: const Color(0xffFF1700),
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            );
          },
          itemCount: 5,
        ),
      ),
    );
  }
}
