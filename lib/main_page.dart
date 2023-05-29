import 'package:facebook_new_ui/screens/home/home_page.dart';
import 'package:facebook_new_ui/widgets/circle_button.dart';
import 'package:flutter/material.dart';

class TabBarHome extends StatelessWidget {

  final int videoCount;
  final int notificationCount;
  final bool isfrinds;
  final int frindsCounts;
  final bool isvideos;
  final bool isnotification;



  const TabBarHome({
    required this.videoCount,
    required this.notificationCount,
    required this.isfrinds,
    required this.isvideos,
    required this.isnotification,
    required this.frindsCounts
  });


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          toolbarHeight: 70,
          title: Text(
            'facebook',
            style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: Color(0xff1778F2)),
          ),
          actions: [
            CircleButton(icon: Icons.search, count: false, countNo: 0),
            CircleButton(icon: Icons.message_rounded, count: true, countNo: 12,)
          ],

          bottom: TabBar(
            tabs: [
              Tab(child: Icon(Icons.home, color: Color(0xff1778F2),size: 30)),
              Tab(child: Stack(
                  children: [
                    Icon(Icons.people_outlined, color: Colors.grey[600],size: 30),
                    isfrinds?  Positioned(
                        right: 1,
                        top: 1,
                        child: Container(
                          width: 17,
                          height: 17,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle
                          ),
                          child: Center(child: Text('$frindsCounts', style: TextStyle(color:Colors.white, fontSize: 10, fontWeight: FontWeight.bold),)),
                        )
                    ):Text(''),
                  ],
              )),
              Tab(child: Stack(
                children: [
                  Container(
                    child: Icon(Icons.video_collection_outlined, color: Colors.grey[600],size: 30),
                    width: 50,
                    height: 50,
                  ),
                 isvideos? Positioned(
                      right: 1,
                      top: 1,
                      child: Container(
                        width: 17,
                        height: 17,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle
                        ),
                        child: Center(child: Text('$videoCount', style: TextStyle(color:Colors.white, fontSize: 10, fontWeight: FontWeight.bold),)),
                      )
                  ):Text(''),
                ],
              )),
              Tab(child: Icon(Icons.account_circle_outlined, color: Colors.grey[600],size: 30)),
              Tab(child: Stack(
                children: [
                  Container(
                    child: Icon(Icons.notifications_outlined, color: Colors.grey[600],size: 30),
                    width: 50,
                    height: 50,
                  ),
                 isnotification? Positioned(
                      right: 1,
                      top: 1,
                      child: Container(
                        width: 17,
                        height: 17,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle
                        ),
                        child: Center(child: Text('$notificationCount', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),)),
                      )
                  ):Text(''),
                ],
              )),
              Tab(child: Icon(Icons.menu, color: Colors.grey[600],size: 30)),
            ],
            indicatorWeight: 2 ,
          ),
        ),

        body: TabBarView(
          children: [
            Home(),


          ],
        ),
      ),
    );
  }
}
