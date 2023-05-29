import 'package:flutter/material.dart';

import '../../../widgets/circle_avater.dart';

class ProfileTextField extends StatelessWidget {
  const ProfileTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width,
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleProfile(
            size: 24,
            pic: 'images/a1.jpg',
            isborderBlue: false,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            height: 60,
            width: 240,
            decoration: ShapeDecoration(
                shape: StadiumBorder(
                    side: BorderSide(width: 1, color: Colors.grey)
                )
            ),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Write something here...',
                  hintStyle: TextStyle(color: Colors.black87, fontWeight: FontWeight.w400)
              ),
            ),
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.photo_library,color: Colors.green,))
        ],
      ),
    );
  }
}
