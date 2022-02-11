import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homepage_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 4),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //    statusBarColor: Colors.white,
    //    systemNavigationBarColor: Colors.white,
    //    systemNavigationBarDividerColor: Colors.white));
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xffFD0376),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/image/CovidTracBook copy3545.png'),
              fit: BoxFit.contain,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Text(
                //   'COVIDTRACBOOK',
                //   style: GoogleFonts.pacifico(
                //       color: Colors.white,
                //        fontSize: 30,
                //        fontWeight: FontWeight.normal),
                //  ),
                // const Image(
                //   image: AssetImage(
                //        "lib/assets/images/MyStore-logos (3)/MyStore-logos.jpeg"),
                //    height: 200,
                //    width: 200,
                //    fit: BoxFit.cover,
                //  ),

                Column(
                  children: const [
                    //  Text(
                    //    'From',
                    //    style: GoogleFonts.exo2(
                    //        color: Colors.white,
                    //        fontSize: 14,
                    //        fontWeight: FontWeight.normal),
                    //  ),
                    //  const Image(
                    //    image: AssetImage('lib/assets/image/SUMITVARUN (1).png'),
                    //    height: 100,
                    //   width: 100,
                    //  ),
                    //  const SizedBox(
                    //    height: 5.0,
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
