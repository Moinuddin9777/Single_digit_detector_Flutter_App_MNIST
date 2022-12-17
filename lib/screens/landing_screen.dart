import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mnistdigitrecognizer/screens/draw_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Digit Detection app',
              style: GoogleFonts.leagueSpartan(
                  fontWeight: FontWeight.bold, fontSize: 28),
            ),
            SizedBox(height: 20),
            Text(
                'Welcome User\n This app is an example and prototype\nthat uses Machine Learning to detect the digits drawn by the user\nMade with Flutter',
                style: GoogleFonts.leagueSpartan(
                    fontWeight: FontWeight.normal, fontSize: 18)),
            SizedBox(height: 30),
            Image.network(
                'https://miro.medium.com/max/788/1*wwYKrV6JR7mBLFCGW-Gj8w.png'),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DrawScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Lets Predict',
                      style: GoogleFonts.leagueSpartan(
                          fontWeight: FontWeight.bold, fontSize: 24)),
                ))
          ],
        ),
      ),
    );
  }
}
