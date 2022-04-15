import 'package:flutter/material.dart';
import 'package:sarde/screens/home.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.lexendDecaTextTheme(
            Theme.of(context)
                .textTheme, // If this is not set, then ThemeData.light().textTheme is used.
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SafeArea(
                child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(40, 150, 10, 0),
                  child: const Text(
                    'Pradeep',
                    maxLines: 2,
                    style: TextStyle(
                        color: Color(0xFF2B3070),
                        fontSize: 64,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(50, 0, 120, 0),
                  child: const Text(
                    'Supervisor',
                    maxLines: 2,
                    style: TextStyle(
                        color: Color(0xFFDD7164),
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(40, 70, 95, 0),
                    child: TextButton(
                      child: const Text(
                        'Old Jobes ',
                        style: TextStyle(
                            color: Color(0xFF2B3070),
                            fontSize: 31,
                            fontWeight: FontWeight.normal),
                      ),
                      onPressed: () {},
                    )),
                Container(
                    padding: const EdgeInsets.fromLTRB(40, 25, 115, 0),
                    child: TextButton(
                      child: const Text(
                        'Support ',
                        style: TextStyle(
                            color: Color(0xFF2B3070),
                            fontSize: 31,
                            fontWeight: FontWeight.normal),
                      ),
                      onPressed: () {},
                    )),
                Container(
                    padding: const EdgeInsets.fromLTRB(40, 25, 135, 0),
                    child: TextButton(
                      child: const Text(
                        'About ',
                        style: TextStyle(
                            color: Color(0xFF2B3070),
                            fontSize: 31,
                            fontWeight: FontWeight.normal),
                      ),
                      onPressed: () {},
                    )),
                Container(
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        padding: const EdgeInsets.fromLTRB(40, 70, 180, 0),
                        iconSize: 50,
                        icon: Image.asset('assets/images/backbutton.png')))
              ],
            ))));
  }
}
