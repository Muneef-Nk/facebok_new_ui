import 'package:facebook_new_ui/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabBarHome(
        isfrinds: false,
        frindsCounts: 22,
        isvideos: true,
        videoCount: 9,
        isnotification: true,
        notificationCount: 21,
      ),
    );
  }
}
