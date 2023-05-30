import 'package:flutter/material.dart';

class FriendsHeader extends StatelessWidget {
  const FriendsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Friends', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Container(
                margin: EdgeInsets.all(5),
                width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    shape: BoxShape.circle
                  ),
                  child: Icon(Icons.search_rounded, size: 30,)
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[200] ,
                   borderRadius: BorderRadius.circular(30)
                  ),
                    child: TextButton(onPressed: (){}, child: Text('Suggestions', style: TextStyle(color: Colors.black)))
                ),
                SizedBox(width: 10,),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[200] ,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: TextButton(onPressed: (){}, child: Text('Your Friends', style: TextStyle(color: Colors.black),))
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
