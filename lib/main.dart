import 'package:facebook_new_ui/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainHome(
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
