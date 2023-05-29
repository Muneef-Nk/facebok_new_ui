import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {

  final IconData icon;
  final bool count;
  final int countNo;



  const CircleButton({super.key, required this.icon, required this.count, required this.countNo, });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            margin: EdgeInsets.all(8),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                shape: BoxShape.circle
            ),
            child: IconButton(onPressed: (){}, icon: Icon(icon, color: Colors.black87,size: 25,))
        ),
        Positioned(
          right: 3,
          top: 8,
          child:count ?  Container(
            width: 17,
            height: 17,
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle
            ),
            child: Center(child: Text('$countNo', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),)),
          ):Text('')
        )
      ],
    );
  }
}
