import 'package:airqualityui/citypage.dart';
import 'package:airqualityui/homepage.dart';
import 'package:airqualityui/pre_login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Air Quality UI",
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.w900,
            fontSize: 15,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (builder) => PreLoginPage(),
                  ),
                );
              },
              child: Text(
                "Pre Login Page",
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w900,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              style: TextButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: Colors.black
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (builder) => HomePage(),
                  ),
                );
              },
              child: Text(
                "Home Page",
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w900,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              style: TextButton.styleFrom(
                  shape: StadiumBorder(),
                  backgroundColor: Colors.black
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (builder) => CityPage(),
                  ),
                );
              },
              child: Text(
                "City Page",
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w900,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              style: TextButton.styleFrom(
                shape: StadiumBorder(),
                backgroundColor: Colors.black
              ),
            ),
          ],
        ),
      ),
    );
  }
}
