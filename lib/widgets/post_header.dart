import 'package:facebook_new_ui/widgets/circle_avater.dart';
import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleProfile(
        pic: 'images/a4.png',
        size: 20,
        isborderBlue: false,
      ),
      title: Text('Muneef', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
      subtitle: Row(
        children: [
          Text('2 day ago', style: TextStyle(fontSize: 15, color: Colors.grey[700]),),
          Text(' · ', style: TextStyle(fontSize: 17, color: Colors.grey[700], fontWeight: FontWeight.bold),),
          Icon(Icons.public, color: Colors.grey[700], size: 17,)
        ],
      ),
      trailing: Icon(Icons.more_horiz, color: Colors.grey[700],size: 26,),
    );
  }
}
