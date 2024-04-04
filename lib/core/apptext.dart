import 'package:flutter/material.dart';



class AppText extends StatelessWidget {
  String data;
  double? size;
  Color? color;
  FontWeight? fw;
  AppText({Key? key, required this.data, this.size, this.color = Colors.white, this.fw})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,

      style: TextStyle(fontSize: size, color: color,fontWeight: fw,height: 1),
    );
  }
}
