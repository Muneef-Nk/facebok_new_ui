import 'package:flutter/material.dart';

class PostDescription extends StatelessWidget {
  const PostDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12, right: 12),
      child: Text('Lorem Ipsum is simply dummy text printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer  a galley of type and scrambled it to make a type specimen',
      style: TextStyle(fontSize: 18, color: Colors.black, height: 1.3, fontWeight: FontWeight.w400),
      ),
    );
  }
}
