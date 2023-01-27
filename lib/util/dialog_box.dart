import 'package:flutter/material.dart';
import 'package:todo_app_flutter/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({Key? key, required this.controller,required this.onSave,required this.onCancel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blueAccent,
      content: Container(
        height: 120,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextField(
            controller: controller,
              decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add a new task",
            ),
          ),
          //save and cancel buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //save button
              MyButton(btnName: "Save", onPressed: onSave),
              const SizedBox(
                width: 5
                ,
              ),
              MyButton(btnName: "Cancel", onPressed: onCancel)
              //cancel button
            ],
          ),
        ]),
      ),
    );
  }
}
