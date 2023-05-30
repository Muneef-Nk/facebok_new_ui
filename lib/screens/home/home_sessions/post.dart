import 'package:facebook_new_ui/widgets/like_share_comment.dart';
import 'package:facebook_new_ui/widgets/post_description.dart';
import 'package:facebook_new_ui/widgets/post_header.dart';
import 'package:facebook_new_ui/widgets/row_buttons.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        //  1
        PostHeader(
          pic: 'images/a1.jpg',
          name: 'Amal',
          time: '1 minutes ago',
          isPublic: true,
        ),
        PostDescription(),
        Container(
          margin: EdgeInsets.only(top: 10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.60,
          child: Image.asset('images/p1.jpg', fit: BoxFit.cover,),
        ),
        LikeShareCmtRow(
          commentCount: '27K',
          likeCount: '872K',
          shaareCount:' 48K',
          viewsCount: '44M',
        ),
        Divider(thickness: 1,),
        RowButtons(),
        Divider(
          thickness: 10,
        ),


        //  2
        PostHeader(
          pic: 'images/a2.jpg',
          name: 'Henry',
          time: '2 second ago',
          isPublic: true,
        ),
        PostDescription(),
        Container(
          margin: EdgeInsets.only(top: 10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.60,
          child: Image.asset('images/p5.jpg', fit: BoxFit.cover,),
        ),
        LikeShareCmtRow(
          commentCount: '80K',
          likeCount: '2M',
          shaareCount:' 900K',
          viewsCount: '12M',
        ),
        Divider(thickness: 1,),
        RowButtons(),

        //3
        PostHeader(
          pic: 'images/a3.jpg',
          name: 'James',
          time: '12 day ago',
          isFriends: true,
        ),
        PostDescription(),
        Container(
          margin: EdgeInsets.only(top: 10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.60,
          child: Image.asset('images/p3.jpg', fit: BoxFit.cover,),
        ),
        LikeShareCmtRow(
          commentCount: '87',
          likeCount: '12K',
          shaareCount:' 300',
          viewsCount: '200K',
        ),
        Divider(thickness: 1,),
        RowButtons(),


        //4
        PostHeader(
          pic: 'images/a4.png',
          name: 'Mia',
          time: '6 minutes ago',
          isOnlyMe: true,
        ),
        PostDescription(),
        Container(
          margin: EdgeInsets.only(top: 10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.60,
          child: Image.asset('images/p4.jpg', fit: BoxFit.cover,),
        ),
        LikeShareCmtRow(
          commentCount: '31K',
          likeCount: '880K',
          shaareCount:' 23K',
          viewsCount: '100K',
        ),
        Divider(thickness: 1,),
        RowButtons(),

        //5
        PostHeader(
          pic: 'images/a5.jpeg',
          name: 'Amelia',
          time: '9 day ago',
          isPublic: true,
        ),
        PostDescription(),
        Container(
          margin: EdgeInsets.only(top: 10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height*0.60,
          child: Image.asset('images/p2.jpg', fit: BoxFit.cover,),
        ),
        LikeShareCmtRow(
          commentCount: '19K',
          likeCount: '120K',
          shaareCount:' 88K',
          viewsCount: '3M',
        ),
        Divider(thickness: 1,),
        RowButtons(),

      ],
    );
  }
}
