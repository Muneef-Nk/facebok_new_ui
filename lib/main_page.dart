import 'package:facebook_new_ui/screens/friends/friends.dart';
import 'package:facebook_new_ui/screens/home/home.dart';
import 'package:facebook_new_ui/widgets/circle_button.dart';
import 'package:flutter/material.dart';

class MainHome extends StatefulWidget {

  final int videoCount;
  final int notificationCount;
  final bool isfrinds;
  final int frindsCounts;
  final bool isvideos;
  final bool isnotification;



   MainHome({
    required this.videoCount,
    required this.notificationCount,
    required this.isfrinds,
    required this.isvideos,
    required this.isnotification,
    required this.frindsCounts
  });

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {

  bool isSelectedHome = true;
  bool isSelectedFriends = false;
  bool isSelectedVideos = false;
  bool isSelectedAccount = false;
  bool isSelectedNotificaton = false;
  bool isSelectedMore = false;





void checkIsSelected(index){
  if(index == 0){
    setState(() {
      isSelectedHome=true;
       isSelectedFriends = false;
       isSelectedVideos = false;
       isSelectedAccount = false;
       isSelectedNotificaton = false;
       isSelectedMore = false;

    });
  }else if(index == 1){
    setState(() {
      isSelectedHome=false;
        isSelectedFriends = true;
      isSelectedVideos = false;
      isSelectedAccount = false;
      isSelectedNotificaton = false;
      isSelectedMore = false;
    });
  }else if(index == 2){
    setState(() {
      isSelectedHome=false;
      isSelectedFriends = false;
      isSelectedVideos = true;
      isSelectedAccount = false;
      isSelectedNotificaton = false;
      isSelectedMore = false;
    });
  }else if(index == 3){
    setState(() {
      isSelectedHome=false;
      isSelectedFriends = false;
      isSelectedVideos = false;
      isSelectedAccount = true;
      isSelectedNotificaton = false;
      isSelectedMore = false;
    });
  }else if(index == 4){
    setState(() {
      isSelectedHome=false;
      isSelectedFriends = false;
      isSelectedVideos = false;
      isSelectedAccount = false;
      isSelectedNotificaton = true;
      isSelectedMore = false;
    });
  }else if(index == 5){
   setState(() {
     isSelectedHome=false;
     isSelectedFriends = false;
     isSelectedVideos = false;
     isSelectedAccount = false;
     isSelectedNotificaton = false;
     isSelectedMore = true;
   });
  }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 6,
      child: Scaffold(
        appBar:AppBar(

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
              onTap: (index){
               checkIsSelected(index);
              },
            tabs: [
              Tab(child: Icon(Icons.home, color:isSelectedHome ? Color(0xff1778F2):Colors.grey[600],size: 30)),
              Tab(child: Stack(
                  children: [
                    Icon(Icons.people_outlined, color:isSelectedFriends ? Color(0xff1778F2): Colors.grey[600],size: 30),
                    widget.isfrinds?  Positioned(
                        right: 1,
                        top: 1,
                        child: Container(
                          width: 17,
                          height: 17,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle
                          ),
                          child: Center(child: Text('${widget.frindsCounts}', style: TextStyle(color:Colors.white, fontSize: 10, fontWeight: FontWeight.bold),)),
                        )
                    ):Text(''),
                  ],
              )),
              Tab(child: Stack(
                children: [
                  Container(
                    child: Icon(Icons.video_collection_outlined, color:isSelectedVideos ? Color(0xff1778F2): Colors.grey[600] ,size: 30),
                    width: 50,
                    height: 50,
                  ),
                 widget.isvideos? Positioned(
                      right: 1,
                      top: 1,
                      child: Container(
                        width: 17,
                        height: 17,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle
                        ),
                        child: Center(child: Text('${widget.videoCount}', style: TextStyle(color:Colors.white, fontSize: 10, fontWeight: FontWeight.bold),)),
                      )
                  ):Text(''),
                ],
              )),
              Tab(child: Icon(Icons.account_circle_outlined, color:isSelectedAccount ? Color(0xff1778F2): Colors.grey[600],size: 30)),
              Tab(child: Stack(
                children: [
                  Container(
                    child: Icon(Icons.notifications_outlined, color:isSelectedNotificaton ? Color(0xff1778F2): Colors.grey[600],size: 30),
                    width: 50,
                    height: 50,
                  ),
                 widget.isnotification? Positioned(
                      right: 1,
                      top: 1,
                      child: Container(
                        width: 17,
                        height: 17,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle
                        ),
                        child: Center(child: Text('${widget.notificationCount}', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),)),
                      )
                  ):Text(''),
                ],
              )),
              Tab(child: Icon(Icons.menu, color:isSelectedMore ? Color(0xff1778F2): Colors.grey[600],size: 30)),
            ],
            indicatorWeight: 2 ,
          ),
        ),

        body: TabBarView(

          children: [
            Home(),
            Friends(),
           Container(),
           Container(),
           Container(),
          ],
        ),
      ),
    );
  }
}
