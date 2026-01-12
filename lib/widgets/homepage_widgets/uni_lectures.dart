import 'package:attendance_tracker/widgets/custom_widgets/attendance_card.dart';
import 'package:flutter/material.dart';

class UniLectures extends StatefulWidget {
  const UniLectures({super.key});

  @override
  State<UniLectures> createState() => _UniLecturesState();
}

class _UniLecturesState extends State<UniLectures> {

  final List<AttendanceCard> atCard = [
    AttendanceCard(lectureName: 'Maths', profName: 'Diddy', atPercent: 20),
    AttendanceCard(lectureName: 'Data Structure', profName: 'Samriya', atPercent: 100)
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: atCard.map((at) {
        return SizedBox(
          height: 75,
          child: Card(
            elevation: 12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              spacing: 20,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(at.lectureName),
                    Text(at.profName)
                  ],
                ),
                Text('${at.atPercent}')
              ],
            ),
          ),
        );
      }).toList()
    );
  }
}
