import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sarde/screens/Super_viser_Dashboard/Super_viser_dashboard.dart';


Widget sardelogo() {
  return Padding(
    padding: EdgeInsets.only(top: 293.h, left: 75.w, right: 154.47.w),
    child: Row(children: [
      Image.asset(
        'assets/images/sarde.png',height: 85.w,width: 154.w,
      ),
    ]),
  );
}

class Username extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();

    return Padding(
      padding: EdgeInsets.only(left: 52.w, right: 53.w),
      child: Row(children: [
        SizedBox(
          width: 278.w,
          height: 52.h,
          child: TextField(
            controller: nameController,
            decoration:  InputDecoration(
              contentPadding: EdgeInsets.only(left: 35.w),
              labelText: 'User Name',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.r)),
                borderSide: BorderSide(color:const Color(0xFFDD7164), width: 1.5.w),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.r)),
                borderSide: BorderSide(width: 1.5.w, color: Colors.blue),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController passwordController = TextEditingController();
    return Padding(
      padding: EdgeInsets.only(left: 52.w, right: 53.w),
      child: Row(children: [
        SizedBox(
          width: 278.w,
          height: 52.h,
          child: TextField(
            obscureText: true,
            controller: passwordController,
            decoration:  InputDecoration(
              contentPadding: EdgeInsets.only(left: 35.w),
                labelText: 'Password',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  borderSide: BorderSide(color:const Color(0xFFDD7164), width: 1.5.w),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  borderSide: BorderSide(width: 1.5.w, color: Colors.blue),
                )),
          ),
        ),
      ]),
    );
  }
}

class Login_Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 52.w, right: 53.w),
      child: GestureDetector(
        child: Stack(alignment: Alignment.center, children: <Widget>[
          SizedBox(
            height: 52.h,
            width: 278.w,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Super_viser_dashboard()));
              },
              child: Padding(
                padding: EdgeInsets.only(left: 36.w, right: 154.w),
                child: Text('Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                    )),
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFFDD7164), // background
                onPrimary: const Color(0xFFDD7164),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  // foreground
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 239.08.w, right: 18.04.w),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                'assets/images/forward_arrow.png',
                height: 14.h,
                width: 8.w,
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}

Widget Contact_admin() {
  return Padding(
    padding: EdgeInsets.only(
      left: 118.w,
    ),
    child: Row(children: [
      TextButton(
        child: Text(
          'Contact admin',
          style: GoogleFonts.lexendDeca(color: Colors.grey, fontSize: 18.sp),
        ),
        onPressed: () {},
      )
    ]),
  );
}