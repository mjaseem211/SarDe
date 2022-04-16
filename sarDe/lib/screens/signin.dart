import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sarde/screens/home.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final EdgeInsets viewPadding;
    final bool maintainBottomViewPadding;
    final EdgeInsets padding;
    final EdgeInsets viewInsets;
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
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
                child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(50, 150, 150, 0),
                  child: Image.asset(
                    'assets/images/sarde.png',
                  ),
                ),
                const SizedBox(
                  height: 37,
                ),
                Container(
                  width: 278.0,
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      labelText: 'User Name',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide:
                            BorderSide(color: Color(0xFFDD7164), width: 1.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(width: 1.5, color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 278.0,
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                        labelText: 'Password',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Color(0xFFDD7164), width: 1.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(width: 1.5, color: Colors.blue),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Stack(alignment: Alignment.center, children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    height: 52,
                    width: 278,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      child: const Text('',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          )),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFDD7164), // background
                        onPrimary: Color(0xFFDD7164),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10.0), // foreground
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 1, 160, 0),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(180, 6, 0, 0),
                    child: Image.asset('assets/images/forwardarrow.png'),
                  ),
                ]),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(10, 70, 10, 0),
                    child: TextButton(
                      child: Text(
                        'Contact admin',
                        style: GoogleFonts.lexendDeca(
                            color: Colors.grey, fontSize: 18),
                      ),
                      onPressed: () {},
                    )),
              ],
            )),
          ),
        ));
  }
}
