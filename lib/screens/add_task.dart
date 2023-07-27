import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task_data.dart';
// ignore: must_be_immutable
class AddTask extends StatelessWidget {
  String? newTaskTitle;
  final Function addTaskCallback;

  AddTask(this.addTaskCallback);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Add Task ",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          const SizedBox(height: 30,),
          TextButton(
            onPressed: () {
             Provider.of<TaskData>(context,listen: false).addData(newTaskTitle!);
             Navigator.pop(context);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.purple,
              primary: Colors.white
            ),
            child: const Text("Add"),
          ),
        ],
      ),
    );
  }
}
