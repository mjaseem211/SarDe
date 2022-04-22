import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/screens/Work_Progress/add_new_work/Add_new_work.dart';

class text_button extends StatelessWidget {
  final VoidCallback? onTap;
  final String? text;
  final Color? color;
  final double? font_size;
final double? left;
  text_button({this.onTap, this.text, this.color,this.font_size,this.left});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left:left?? 33.w,
      ),
      child: GestureDetector(
        child: Row(children: [
          Text(text ?? "",
              style: TextStyle(
                  color:color?? Color(0xFFDD7164),
                  fontSize:font_size?? 20.sp,
                  fontWeight: FontWeight.w400)),
        ]),
        onTap: onTap ?? () {Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => add_new_work()));},
      ),
    );
  }
}
