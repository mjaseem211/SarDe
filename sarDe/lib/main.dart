import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sarde/screens/Sign_in/signin.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            // Use this line to prevent extra rebuilds
            useInheritedMediaQuery: true,
            title: 'First Method',
            // You can use the library anywhere in the app even in theme
            theme: ThemeData(
              primarySwatch: Colors.blue,
              textTheme:  GoogleFonts.lexendDecaTextTheme(
                Theme.of(context).textTheme, // If this is not set, then ThemeData.light().textTheme is used.
              ),
            ),
            home: SignIn(),
          );
        });
  }
}
