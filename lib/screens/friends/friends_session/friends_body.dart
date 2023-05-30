import 'package:flutter/material.dart';

import '../../../widgets/friends_cards.dart';

class FriendsBody extends StatelessWidget {
  const FriendsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Friends requests',
                          style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(width: 8),
                        Text('5',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                                color: Colors.red)),
                      ],
                    ),
                    Text('See all',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Color(0xff1778F2))),
                  ],
                ),
              ),
            ],
          ),
        ),
         FriendsCards(
           time: '1w',
           name: 'Benjamin',
           pic: 'images/newF1.jpg',
           mutualFrdCount: '2',
           mutualFrdPic: 'images/a3.jpg',
         ),
        FriendsCards(
          time: '4d',
          name: 'Layla',
          pic: 'images/newF2.jpg',
          mutualFrdCount: '8',
          mutualFrdPic: 'images/a1.jpg',
        ),
        FriendsCards(
          time: '2w',
          name: 'Daniel',
          pic: 'images/newF3.jpg',
          mutualFrdCount: '4',
          mutualFrdPic: 'images/a4.png',
        ),
        FriendsCards(
          time: '5w',
          name: 'Emma',
          pic: 'images/newF4.jpg',
          mutualFrdCount: '6',
          mutualFrdPic: 'images/a5.jpeg',
        ),
        FriendsCards(
          time: '2d',
          name: 'Jack',
          pic: 'images/newF5.jpg',
          mutualFrdCount: '9',
          mutualFrdPic: 'images/a1.jpg',
        ),

      ],
    );
  }
}
