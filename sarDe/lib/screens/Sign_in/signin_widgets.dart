import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SardeLogo extends StatelessWidget {
  const SardeLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 280.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/sarde.png',
            height: 85.h,
            width: 154.w,
          ),
        ],
      ),
    );
  }
}

class Username extends StatelessWidget {
  const Username({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 52.w, right: 53.w),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
          width: 278.w,
          height: 52.h,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.only(top: 19.h, left: 35.w, bottom: 10.h),
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

class Password extends StatelessWidget {
  const Password({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 52.w, right: 53.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 278.w,
            height: 52.h,
            child: TextField(
              obscureText: true,
              controller: controller,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.only(top: 16.h, left: 35.w, bottom: 13.h),
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
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.r),
                  ),
                  borderSide: BorderSide(
                    width: 1.5.w,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 52.w,
        right: 53.w,
      ),
      child: GestureDetector(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
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
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 239.08.w, right: 18.79.w),
                  child: Image.asset(
                    'assets/images/forward_arrow.png',
                    height: 14.h,
                    width: 8.w,
                  ),
                ),
              ],
            ),
          ],
        ),
        onTap: onTap,
      ),
    );
  }
}

class ContactAdmin extends StatelessWidget {
  const ContactAdmin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          child: Text(
            'Contact admin',
            style: GoogleFonts.lexendDeca(color: Colors.grey, fontSize: 18.sp),
          ),
          onPressed: () => openSheet(context),
        ),
      ],
    );
  }
}

void openSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return const OptionsList();
    },
  );
}

class OptionsList extends StatelessWidget {
  const OptionsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          leading: const Icon(Icons.phone),
          title: const Text('Call'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.email_outlined),
          title: const Text('Email'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
