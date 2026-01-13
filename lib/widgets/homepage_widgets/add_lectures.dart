import 'package:flutter/material.dart';

class AddLectures extends StatelessWidget {

  final Function addSubject;
  AddLectures({super.key, required this.addSubject});

  final subController = TextEditingController();
  final profController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Subject Name'),
            controller: subController,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Professor Name'),
            controller: profController,
          ),
          ElevatedButton(
              onPressed: (){
                addSubject(
                  subController.text,
                  profController.text,
                  0.0
                );
              },
              child: Text('PRESS')
          )
        ],
      ),
    );
  }
}
