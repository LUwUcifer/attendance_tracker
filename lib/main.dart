import 'package:attendance_tracker/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(AtTrack());

class AtTrack extends StatelessWidget {
  const AtTrack({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AtTrack',
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
      ),
      body: HomePage(),
    );
  }
}
