import 'package:facebook_new_ui/screens/friends/friends_session/firends_header.dart';
import 'package:facebook_new_ui/screens/friends/friends_session/friends_body.dart';
import 'package:flutter/material.dart';

class Friends extends StatelessWidget {
  const Friends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          FriendsHeader(),
          Divider(thickness: 1,),
          FriendsBody()
        ],
      )
    );
  }
}
