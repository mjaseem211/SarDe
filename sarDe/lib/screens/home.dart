import 'package:flutter/material.dart';
import 'package:sarde/screens/jobassign.dart';
import 'package:sarde/screens/profile.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SafeArea(
                child: Center(
                    child: Column(
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: TextButton(
                        child: const Text(
                          'Hi ,                 Pradeep',
                          maxLines: 2,
                          style: TextStyle(
                              fontFamily: 'IndieFlower',
                              color: Color(0xFF2B3070),
                              fontSize: 64,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Profile()));
                        })),
                Stack(alignment: Alignment.centerLeft, children: <Widget>[
                  Container(
                      width: 330,
                      height: 5.0,
                      decoration: BoxDecoration(
                        color: const Color(0xffd8d4e9),
                        border: Border.all(
                          color: Color(0xffd8d4e9),
                          width: 8,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      )),
                  Container(
                      width: 210,
                      height: 9.0,
                      decoration: BoxDecoration(
                        color: const Color(0xffa49eb8),
                        border: Border.all(
                          color: Color(0xffa49eb8),
                          width: 8,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      )),
                ]),
                const Spacer(
                  flex: 1,
                ),
                Stack(alignment: Alignment.centerLeft, children: <Widget>[
                  Positioned(
                    left: 38,
                    height: 124,
                    width: 306,
                    child: ElevatedButton(
                      onPressed: () {

                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => JobAssign()));
                      },
                      child: const Text('',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          )),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFA49EB8), // background
                        onPrimary: Color(0xFFA49EB8), // foreground
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    )),

                  AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                      alignment: Alignment.bottomLeft,
                      width: 257,
                      height: 136,
                      decoration: BoxDecoration(
                        color: const Color(0xff2b3070),
                        border: Border.all(
                          color: Color(0xff2b3070),
                          width: 8,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      )),
                  Container(
                    padding: const EdgeInsets.fromLTRB(15, 30, 0, 0),
                    child: const Text(
                      'Job 303',
                      maxLines: 2,
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(15, 75, 0, 0),
                    child: const Text(
                      'Kuttichira to Maradu',
                      maxLines: 2,
                      style: TextStyle(
                          color: Color(0xDCFFFFFF),
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(305, 0, 30, 100),
                    child: const Text(
                      '78 %',
                      maxLines: 2,
                      style: TextStyle(
                          color: Color(0xFF636262),
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ]),
                const Spacer(
                  flex: 1,
                ),
                Stack(alignment: Alignment.centerLeft, children: <Widget>[
                  Positioned(
                    left: 38,
                    height: 124,
                    width: 306,
                    child: Container(
                      width: 306,
                      height: 124,
                      decoration: BoxDecoration(
                        color: const Color(0xfff4cfc9),
                        border: Border.all(
                          color: Color(0xfff4cfc9),
                          width: 8,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                      alignment: Alignment.bottomLeft,
                      width: 188,
                      height: 136,
                      decoration: BoxDecoration(
                        color: const Color(0xffdd7164),
                        border: Border.all(
                          color: Color(0xffdd7164),
                          width: 8,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                  Container(
                    padding: const EdgeInsets.fromLTRB(305, 5, 30, 100),
                    child: const Text(
                      '56 %',
                      maxLines: 2,
                      style: TextStyle(
                          color: Color(0xFF636262),
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(15, 30, 0, 0),
                    child: const Text(
                      'Job 308',
                      maxLines: 2,
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(15, 75, 0, 0),
                    child: const Text(
                      'Koyilandy  to Kozhikode',
                      maxLines: 2,
                      style: TextStyle(
                          color: Color(0xBAFFFFFF),
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ]),
                const Spacer(
                  flex: 5,
                ),
                Stack(children: <Widget>[
                  Container(
                      width: 500,
                      height: 216,
                      decoration: BoxDecoration(
                        color: const Color(0xffefd2bd),
                        border: Border.all(
                          color: Color(0xffefd2bd),
                          width: 8,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                  Container(
                    padding: const EdgeInsets.fromLTRB(60, 35, 0, 0),
                    child: const Text(
                      'Items shiped from inventry, please\n update once collected\n        ',
                      maxLines: 2,
                      style: TextStyle(
                          color: Color(0xBA000000),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(50, 95, 0, 0),
                    child: Image.asset('assets/images/Line.jpg'),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(60, 115, 0, 0),
                    child: const Text(
                      'Quality inspection pending on\n Kuttichira to Maradu.         ',
                      maxLines: 2,
                      style: TextStyle(
                          color: Color(0xBA000000),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ]),
              ],
            )))));
  }
}
