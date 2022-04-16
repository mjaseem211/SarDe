import 'package:flutter/material.dart';
import 'package:sarde/screens/JobMain.dart';
import 'package:sarde/screens/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class JobAssign extends StatelessWidget {
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
                child: Center(
              child: Column(children: <Widget>[
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    padding: EdgeInsets.fromLTRB(0, 10.h, 360.w, 0),
                    iconSize: 20,
                    icon: Image.asset(
                      'assets/images/backarrow.png',
                    )),
                const SizedBox(
                  height: 2,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 16, 280, 0),
                  child: const Text(
                    'Job 303',
                    style: TextStyle(
                        color: Color(0xFF2B3070),
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 16, 220, 0),
                  child: const Text(
                    'NABARD RIDF 23\nKuttichira to Maradu',
                    style: TextStyle(
                        color: Color(0xB32B3070),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 16, 190, 0),
                  child: RichText(
                    text: const TextSpan(
                      text: '10-08-22    ',
                      style: TextStyle(
                          color: Color(
                            0xFF52972A,
                          ),
                          fontSize: 22,
                          fontWeight: FontWeight.normal),
                      /*defining default style is optional */
                      children: <TextSpan>[
                        TextSpan(
                            text: ' 18-09-22',
                            style: TextStyle(
                              color: Color(0xFFB8493C),
                              fontWeight: FontWeight.normal,
                              fontSize: 22,
                            )),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 265, 0),
                  child: const Text(
                    'Road Marking',
                    maxLines: 2,
                    style: TextStyle(
                        color: Color(0xFFDD7164),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 3),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 158, 0),
                  child: const Text(
                    'Road Marking from kuttichira to maradu',
                    style: TextStyle(
                        color: Color(0x80000000),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 16, 23, 0),
                  child: RichText(
                    text: const TextSpan(
                      text:
                          '18-09-22                                           ',
                      style: TextStyle(
                          color: Color(
                            0xFFBC401E,
                          ),
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                      /*defining default style is optional */
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Total : 534  sqm',
                            style: TextStyle(
                              color: Color(0xFF2B3070),
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            )),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 38, 0),
                  child: Image.asset('assets/images/Line.jpg'),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 290, 0),
                  child: const Text(
                    'Stud Fixing',
                    maxLines: 2,
                    style: TextStyle(
                        color: Color(0xFFDD7164),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 3),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 108, 0),
                  child: const Text(
                    'Stud fixing on the sides from kuttichira to maradu',
                    style: TextStyle(
                        color: Color(0x80000000),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 16, 38, 0),
                  child: RichText(
                    text: const TextSpan(
                      text:
                          '18-09-22                                           ',
                      style: TextStyle(
                          color: Color(
                            0xFFBC401E,
                          ),
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                      /*defining default style is optional */
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Total : 184 nos',
                            style: TextStyle(
                              color: Color(0xFF2B3070),
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            )),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 38, 0),
                  child: Image.asset('assets/images/Line.jpg'),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 275, 0),
                  child: const Text(
                    'Board Fixing',
                    maxLines: 2,
                    style: TextStyle(
                        color: Color(0xFFDD7164),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 3),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 98, 0),
                  child: const Text(
                    'Board fixing on the sides from kuttichira to maradu',
                    style: TextStyle(
                        color: Color(0x80000000),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 16, 40, 0),
                  child: RichText(
                    text: const TextSpan(
                      text:
                          '18-09-22                                           ',
                      style: TextStyle(
                          color: Color(
                            0xFFBC401E,
                          ),
                          fontSize: 16,
                          fontWeight: FontWeight.normal),

                      /*defining default style is optional */
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Total : 43  nos',
                            style: TextStyle(
                              color: Color(0xFF2B3070),
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            )),
                      ],
                    ),
                  ),
                ),
                Stack(children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 140, 0, 0),
                    height: 224,
                    width: 800,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => JobMain()));
                      },
                      child: const Text('',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'IndieFlower.ttf',
                            fontWeight: FontWeight.normal,
                          )),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF2B3070), // background
                        onPrimary: Color(0xFF2B3070), // foreground
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(45, 175, 0, 0),
                    child: const Text(
                      'Start Job',
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(350, 185, 0, 0),
                    child: Image.asset('assets/images/forwardarrow.png'),
                  ),
                ]),
              ]),
            ))));
  }
}
