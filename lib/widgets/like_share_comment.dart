import 'package:flutter/material.dart';

class LikeShareCmtRow extends StatelessWidget {

  final String shaareCount;
  final String likeCount;
  final String commentCount;
  final String viewsCount;

  const LikeShareCmtRow({
    required this.shaareCount,
    required this.likeCount,
    required this.commentCount,
    required this.viewsCount
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 17,
                height: 17,
                decoration: BoxDecoration(
                    color: Color(0xff1778F2),
                    shape: BoxShape.circle
                ),
                child: Icon(Icons.thumb_up, color: Colors.white,size: 11,),
              ),
              SizedBox(width: 5),
              Text('$likeCount', style: TextStyle(fontWeight: FontWeight.w400),),
            ],
          ),
          Row(
            children: [
              Text('$commentCount comments', style: TextStyle(fontWeight: FontWeight.w400)),
              Text(' · ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Text('$shaareCount shares', style: TextStyle(fontWeight: FontWeight.w400)),
              Text(' · ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Text('$viewsCount views', style: TextStyle(fontWeight: FontWeight.w400)),
            ],
          )
        ],
      ),
    );
  }
}
