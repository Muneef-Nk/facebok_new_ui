import 'package:facebook_new_ui/widgets/circle_avater.dart';
import 'package:facebook_new_ui/widgets/circle_button.dart';
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
        required this.isCreate
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      width: 110,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(storypic), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          isMusic
              ? Text('')
              : isCreate?Text(''):CircleProfile(
                  isborderBlue: true,
                  pic: pic,
                  size: avatersize,
                ),

          isMusic
              ? Positioned(
                  bottom: 10,
                  left: 10,
                  right: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.deepOrange.withOpacity(.5),
                          spreadRadius: 20,
                          blurRadius: 60,
                        )
                      ]
                    ),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
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
                  ))
              : Positioned(
                  bottom: 10,
                  left: 10,
                  child: Text(
                    label,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
           Positioned(
            bottom: 0,
            child:isCreate? Container(
              padding: EdgeInsets.only(bottom: 10),
              width: 110,
              height: 80,
              decoration: BoxDecoration(
                color:  Colors.white,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Create', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                  Text('story', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                ],
              ),
          ):Text('')
           ),
           isCreate? Positioned(
              left: 20,
              right: 20,
              bottom: 50,
              child: Container(
                padding: EdgeInsets.all(4),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle
                  ),
                  child: Icon(Icons.add, color: Colors.white, size: 40),
                ),
              ),
            ):Text(''),

        ],
      ),
    );
  }
}
