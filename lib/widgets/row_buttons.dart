import 'package:flutter/material.dart';

class RowButtons extends StatelessWidget {
  const RowButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only( left: 15, right: 15, bottom: 10),
    height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

         TextButton.icon(onPressed: (){}, icon: Icon(Icons.thumb_up_off_alt_outlined, color: Colors.grey[700],), label: Text('Like', style: TextStyle(color: Colors.grey[700]),),),
         TextButton.icon(onPressed: (){}, icon: Icon(Icons.comment_outlined, color: Colors.grey[700]), label: Text('Comment',style: TextStyle(color: Colors.grey[700]),)),
         TextButton.icon(onPressed: (){}, icon: Icon(Icons.share_outlined, color: Colors.grey[700]), label: Text('Share', style: TextStyle(color: Colors.grey[700]),))
        ],
      ),
    );
  }
}
