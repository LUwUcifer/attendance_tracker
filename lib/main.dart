import 'package:attendance_tracker/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AtTrack',
      theme: ThemeData(primaryColor: Colors.deepPurple),
      home: AtTrackHome(),
    );
  }
}

class AtTrackHome extends StatelessWidget {
  const AtTrackHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AtTrack'),
        backgroundColor: Colors.blueGrey,
      ),
      body: HomePage(),
    );
  }
}
