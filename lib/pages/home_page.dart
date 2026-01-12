import 'package:flutter/material.dart';
import '../widgets/homepage_widgets/uni_lectures.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        children: [
          SizedBox(height: 20,),
          SearchBar(),
          SizedBox(height: 20,),
          UniLectures()
        ],
      ),
    );
  }
}
