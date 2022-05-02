import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sarde/screens/Super_viser_Dashboard/Super_viser_dashboard.dart';

Widget sardelogo() {
  return Padding(
    padding: EdgeInsets.only(top: 293.h, left: 75.w, right: 154.47.w),
    child: Row(children: [
      Image.asset(
        'assets/images/sarde.png',
        height: 85.w,
        width: 154.w,
      ),
    ]),
  );
}

class Username extends StatelessWidget {
  const Username({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();

    return Padding(
      padding: EdgeInsets.only(left: 52.w, right: 53.w),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
          width: 278.w,
          height: 52.h,
          child: TextField(
            controller: nameController,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(
                  top: 19.h, left: 35.w, right: 156.w, bottom: 10.h),
              labelText: 'username',
              labelStyle: TextStyle(
                  color: const Color(0xff2B3070).withOpacity(0.4),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.r)),
                borderSide:
                    BorderSide(color: const Color(0xFFDD7164), width: 1.5.w),
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

// ignore: camel_case_types
class password extends StatelessWidget {
  const password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController passwordController = TextEditingController();
    return Padding(
      padding: EdgeInsets.only(left: 52.w, right: 53.w),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
          width: 278.w,
          height: 52.h,
          child: TextField(
            obscureText: true,
            controller: passwordController,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(
                    top: 16.h, left: 35.w, right: 159.w, bottom: 13.h),
                labelText: 'Password',
                labelStyle: TextStyle(
                    color: const Color(0xff2B3070).withOpacity(0.4),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  borderSide:
                      BorderSide(color: const Color(0xFFDD7164), width: 1.5.w),
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

// ignore: camel_case_types
class Login_Button extends StatelessWidget {
  const Login_Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 52.w,
        right: 53.w,
      ),
      child: GestureDetector(
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Container(
            height: 52.h,
            width: 278.w,
            decoration: BoxDecoration(
              color: const Color(0xffDD7164),
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 36.w, right: 193.w),
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 18.sp),
                ),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: EdgeInsets.only(left: 239.08.w, right: 32.79.w),
              child: Image.asset(
                'assets/images/forward_arrow.png',
                height: 14.h,
                width: 8.w,
              ),
            ),
          ]),
        ]),
        onTap: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => Super_viser_dashboard()));
        },
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget Contact_admin() {
  return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
    TextButton(
      child: Text(
        'Contact admin',
        style: GoogleFonts.lexendDeca(color: Colors.grey, fontSize: 18.sp),
      ),
      onPressed: () {},
    )
  ]);
}
