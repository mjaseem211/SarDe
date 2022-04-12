import 'package:flutter/material.dart';
import 'package:sarde/screens/home.dart';

class JobAssign extends StatelessWidget {
  List<bool> _selections = List.generate(3, (_) => false);

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
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        padding: const EdgeInsets.fromLTRB(0, 10, 360, 0),
                        iconSize: 20,
                        icon: Image.asset(
                          'assets/images/backarrow.png',
                        ))),
                SizedBox(
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
                  padding: const EdgeInsets.fromLTRB(10, 16, 185, 0),
                  child: RichText(
                    text: const TextSpan(
                      text: '10-08-22    ',
                      style: TextStyle(
                        color: Color(
                          0xFF52972A,
                        ),
                        fontSize: 22,
                      ),
                      /*defining default style is optional */
                      children: <TextSpan>[
                        TextSpan(
                            text: ' 18-09-22',
                            style: TextStyle(
                              color: Color(0xFFB8493C),
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 16, 220, 0),
                  child: RichText(
                    text: const TextSpan(
                      text: 'Road Marking   ',
                      style: TextStyle(
                        color: Color(
                          0xB32B3070,
                        ),
                        fontSize: 13,
                      ),
                      /*defining default style is optional */
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Stud Fixing ',
                            style: TextStyle(
                              color: Color(0xB32B3070),
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.topLeft,
                  width: 375,
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    border: Border.all(
                      color: Color(0xffdd7164),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  width: 375,
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    border: Border.all(
                      color: Color(0xffdd7164),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  width: 375,
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    border: Border.all(
                      color: Color(0xffdd7164),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                Stack(children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    height: 127,
                    width: 800,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => JobAssign()));
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
                    padding: const EdgeInsets.fromLTRB(45, 72, 0, 0),
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
                    padding: EdgeInsets.fromLTRB(350, 82, 0, 0),
                    child: Image.asset('assets/images/forwardarrow.png'),
                  ),
                ]),
              ]),
            ))));
  }
}
