import 'package:facebook_new_ui/screens/home/sessions/post.dart';
import 'package:facebook_new_ui/screens/home/sessions/profile_textfeild.dart';
import 'package:facebook_new_ui/screens/home/sessions/story.dart';
import 'package:flutter/material.dart';


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
