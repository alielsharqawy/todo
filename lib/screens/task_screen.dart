import 'package:flutter/material.dart';
import 'package:todoapp/models/task_data.dart';
import '../widget/listview_widget.dart';
import 'add_task.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child:  AddTask((newTaskTitle){
                 // setState(() {
                 //   tasks.add(Task(name: newTaskTitle));
                 //   Navigator.pop(context);
                 // });
                }),
              ),
            ),
          );
        },
        backgroundColor: Colors.purpleAccent,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Colors.purple,
      body: Container(
        padding: const EdgeInsets.only(
          right: 30,
          top: 60,
          left: 30,
          bottom: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.playlist_add_check,
                  size: 30,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "ToDo Tasks",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
             Text(
              "${Provider.of<TaskData>(context).tasks.length} Tasks",
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListviewWidget(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
