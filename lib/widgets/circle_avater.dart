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
    return Positioned(
      left: 8,
      top: 8,
      child: Container(
        padding: EdgeInsets.all(2.5),
        // margin: EdgeInsets.all(5),
        decoration:isborderBlue? BoxDecoration(
          border: Border.all(width: 2.5, color: Color(0xff1778F2)),
           shape:  BoxShape.circle,
        ):null,
        child: CircleAvatar(
          radius: size,//24
          backgroundImage: AssetImage(pic),
        ),
      ),
    );
  }
}
