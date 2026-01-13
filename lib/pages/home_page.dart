import 'package:attendance_tracker/widgets/custom_widgets/attendance_card.dart';
import 'package:flutter/material.dart';
import '../widgets/homepage_widgets/uni_lectures.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<AttendanceCard> _atCard = [
    AttendanceCard(lectureName: 'Maths', profName: 'Diddy', atPercent: 20),
    AttendanceCard(lectureName: 'Data Structure', profName: 'Samriya', atPercent: 100)
  ];

  void _addNewSubject(String lectureName, String profName, double atPercent){
    final newSubject = AttendanceCard(
        lectureName: lectureName,
        profName: profName,
        atPercent: atPercent
    );

    setState(() {
      _atCard.add(newSubject);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        children: [
          SizedBox(height: 20,),
          SearchBar(),
          ElevatedButton(onPressed: () {
            _addNewSubject('OOPs', 'Bhatia', 0);
          },
              child: Text('PRESS')),
          SizedBox(height: 20,),
          UniLectures(atCard: _atCard,)
        ],
      ),
    );
  }
}
