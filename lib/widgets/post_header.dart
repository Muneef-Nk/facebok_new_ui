import 'package:facebook_new_ui/widgets/circle_avater.dart';
import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {

  final String pic;
  final String name;
  final String time;
  final bool isPublic;
  final bool isFriends;
  final bool isOnlyMe;

  const PostHeader({
  required this.pic,
    required this.name,
    required this.time,
     this.isPublic=false,
     this.isFriends=false,
     this.isOnlyMe=false
  });


  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleProfile(
        pic: pic,
        size: 20,
        isborderBlue: false,
      ),
      title: Text(name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
      subtitle: Row(
        children: [
          Text(time, style: TextStyle(fontSize: 15, color: Colors.grey[700]),),
          Text(' · ', style: TextStyle(fontSize: 17, color: Colors.grey[700], fontWeight: FontWeight.bold),),
          isPublic ? Icon(Icons.public, color: Colors.grey[700], size: 17,) :Text('') ,
          isFriends ? Icon(Icons.people, color: Colors.grey[700], size: 17,):Text('') ,
          isOnlyMe ? Icon(Icons.lock, color: Colors.grey[700], size: 17,):Text('') ,
        ],
      ),
      trailing: Icon(Icons.more_horiz, color: Colors.grey[700],size: 26,),
    );
  }
}
