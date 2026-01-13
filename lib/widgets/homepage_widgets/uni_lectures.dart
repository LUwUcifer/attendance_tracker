import 'package:attendance_tracker/models/attendance_card.dart';
import 'package:flutter/material.dart';

class UniLectures extends StatelessWidget {

  final List<AttendanceCard> atCard;
  const UniLectures({super.key, required this.atCard});

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
