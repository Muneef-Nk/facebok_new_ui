import 'package:facebook_new_ui/screens/home/sessions/profile_textfeild.dart';
import 'package:facebook_new_ui/screens/home/sessions/story.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProfileTextField(),
        Divider(
          thickness: 10,
        ),
      Story(),
        Divider(
          thickness: 10,
        ),
      ],
    );
  }
}
