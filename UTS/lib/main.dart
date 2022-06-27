import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uts/screens/Home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              // Use this line to prevent extra rebuilds
              useInheritedMediaQuery: true,
              title: 'First Method',
              // You can use the library anywhere in the app even in theme
              theme: ThemeData(
                primarySwatch: Colors.blue,
                textTheme: GoogleFonts.lexendDecaTextTheme(
                  Theme.of(context).textTheme,
                  // If this is not set, then ThemeData.light().textTheme is used.
                ),
              ),
              home: const Home());
        });
  }
}
