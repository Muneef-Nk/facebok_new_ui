import 'package:flutter/material.dart';
import 'home_sessions/post.dart';
import 'home_sessions/profile_textfeild.dart';
import 'home_sessions/story.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var divider = Divider(
          thickness: 10,
        );
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        ProfileTextField(),
        divider,
      Story(),
        divider,
       Post(),
        divider,
      ],
    );
  }
}
