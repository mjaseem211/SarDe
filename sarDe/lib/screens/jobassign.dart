import 'package:flutter/material.dart';
import 'package:sarde/screens/home.dart';



class JobAssign extends StatelessWidget {
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
            padding: const EdgeInsets.fromLTRB(40, 70, 180, 0),
            iconSize: 50,
            icon: Image.asset('assets/images/Vector.png')))


       ], )

    )
    )
    )
    );
  }
}
