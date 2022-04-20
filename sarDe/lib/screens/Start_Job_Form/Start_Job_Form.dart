import 'package:flutter/material.dart';
import 'package:sarde/screens/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../job_main/JobMain.dart';

class Start_Job_Form extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
          shrinkWrap: true,
          children: [

      Column(
      children: [
          BackButton1(),
    SizedBox(
      height: 66.h,
    ),
        Title1(),
    SizedBox(
      height: 3.h,),
        Heading1(),
    SizedBox(
      height:5.h,
    ),
        Heading2(),
    SizedBox(
      height: 24.h,
    ),
        Heading3(),
        Heading4(),
    SizedBox(
      height: 3.h,
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


  Widget BackButton1(){
    return Padding(
      padding: EdgeInsets.only(top: 53.h, left: 41.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            child: const Icon(Icons.arrow_back),
          ),
        ],
      ),
    );
  }

  Widget Title1(){
    return Padding(
      padding: EdgeInsets.only(left: 33.w),
      child: Row(
          children: [

            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Job 303",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 35.sp,
                    color: const Color(0xFF2B3070)),
              ),
            ),
          ]),
    );
  }
  Widget Heading1(){
    return Padding(
      padding: EdgeInsets.only(left: 33.w),
      child: Row(
          children: [

            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "NABARD RIDF 23\nKuttichira to Maradu",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22.sp,
                    color: const Color(0xFF2B3070).withOpacity(0.7)),
              ),
            ),
          ]),
    );
  }

  Widget Heading2(){
    return Padding(
      padding: EdgeInsets.only(left: 33.w, right: 189.w),
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "10-08-22",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22.sp,
                    color: const Color(0xFF52972A)),
              ),
            ),
          ),
          Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                child: Text(
                  "18-09-22",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 22.sp,
                      color: const Color(0xFFB8493C)),
                ),
              )),
        ],
      ),
    );
  }

  Widget Heading3(){
    return Padding(
      padding: EdgeInsets.only(left: 35.w),
      child: Row(
          children: [

            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Road Marking",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20.sp,
                    color: const Color(0xFFDD7164)),
              ),
            ),
          ]),
    );

  }
  Widget Heading4(){
    return Padding(
      padding: EdgeInsets.only(left: 36.w),
      child: Row(
          children: [

            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Road Marking from kuttichira to maradu",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: const Color(0xFF000000).withOpacity(0.5)),
              ),
            ),
          ]),
    );

  }

}
