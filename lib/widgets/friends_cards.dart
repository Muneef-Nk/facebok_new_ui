import 'package:facebook_new_ui/widgets/circle_avater.dart';
import 'package:flutter/material.dart';

class FriendsCards extends StatelessWidget {

  final String pic;
  final String name;
  final String mutualFrdCount;
  final String mutualFrdPic;
  final String time;

  const FriendsCards({
    required this.pic,
    required this.name,
    required this.mutualFrdCount,
    required this.mutualFrdPic,
    required this.time
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  width: 96,
                  height: 96,
                  child: CircleProfile(
                      size: 35, pic: pic, isborderBlue: false),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 15, left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(name, style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 19)),
                            Text(time, style:
                            TextStyle(fontSize: 15, color: Colors.grey[600])),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        padding: EdgeInsets.only(right: 15, left: 10),
                        child: Row(
                          children: [
                            CircleProfile(
                                size: 13, pic: mutualFrdPic, isborderBlue: false),
                            Text('$mutualFrdCount mutual friends', style: TextStyle(fontSize: 15, color: Colors.grey[600]),)
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: 120,
                              height: 35,
                              // padding: EdgeInsets.all(10),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  elevation: MaterialStatePropertyAll(0),
                                  backgroundColor:MaterialStatePropertyAll(Color(0xff1778F2)),
                                ),
                                onPressed: (){}, child: Text('Confirm'),)),
                          SizedBox(width: 10),
                          Container(
                              width: 120,
                              height: 35,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                    elevation: MaterialStatePropertyAll(0),
                                    foregroundColor: MaterialStatePropertyAll(Colors.black),
                                    backgroundColor:MaterialStatePropertyAll(Colors.grey[200], ),
                                  ),
                                  onPressed: (){}, child: Text('Delete')))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}
