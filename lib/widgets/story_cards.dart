import 'package:facebook_new_ui/widgets/circle_avater.dart';
import 'package:flutter/material.dart';

class StoryCards extends StatelessWidget {
  final String pic;
  final String label;
  final String storypic;
  final double avatersize;
  final bool isMusic;
  final bool isCreate;

  const StoryCards(
      {required this.pic,
      required this.label,
      required this.storypic,
      required this.avatersize,
      required this.isMusic,
      required this.isCreate});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      width: 110,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: isCreate ? AssetImage('') : AssetImage(storypic),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          isCreate
              ? ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  child: Image.asset('images/a1.jpg'))
              : Text(''),

          //profile
          isMusic
              ? Text('')
              : isCreate
                  ? Text('')
                  : CircleProfile(
                      isborderBlue: true,
                      pic: pic,
                      size: avatersize,
                    ),

          //label
          isMusic
              ? Text('')
              : isCreate
                  ? Text('')
                  : Positioned(
                      bottom: 15,
                      left: 15,
                      child: Text(
                        label,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),

          Positioned(
              bottom: 10,
              child: isMusic
                  ? Container(
                      width: 110,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Share',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          Text(
                            'music you',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          Text(
                            'love',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ],
                      ),
                    )
                  : Text('')),
          Positioned(
              bottom: 0,
              child: isCreate
                  ? Container(
                      padding: EdgeInsets.only(bottom: 10),
                      width: 110,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Create',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Text('story',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    )
                  : Text('')),
          isCreate
              ? Positioned(
                  left: 20,
                  right: 20,
                  bottom: 50,
                  child: Container(
                    padding: EdgeInsets.all(3),
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[200], shape: BoxShape.circle),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff1778F2), shape: BoxShape.circle),
                      child: Icon(Icons.add, color: Colors.white, size: 30, ),
                    ),
                  ),
                )
              : Text(''),
        ],
      ),
    );
  }
}
