import 'package:flutter/material.dart';

class CircleProfile extends StatelessWidget {

  final double size;
  final String pic;
  final bool isborderBlue;

  const CircleProfile({
    required this.size,
    required this.pic,
    required this.isborderBlue
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      margin: EdgeInsets.all(5),
      // width: 55,
      // height: 55,
      decoration: BoxDecoration(
        border:isborderBlue? Border.all(width: 4, color: Color(0xff1778F2)):null,
         shape:  BoxShape.circle,
      ),
      child: CircleAvatar(
        radius: size,//24
        backgroundImage: AssetImage(pic),
      ),
    );
  }
}
