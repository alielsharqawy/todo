import 'package:flutter/material.dart';
import 'package:todoapp/widget/listtile_widget.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task_data.dart';

class ListviewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemCount: taskData.tasks.length,
            itemBuilder: (context, index) {
              return TaskTileWidget(
                  isChecked: taskData.tasks[index].isdone,
                  tasktittle: taskData.tasks[index].name,
                  checkboxchange: (val) {
                    taskData.updatetask(taskData.tasks[index]);
                  },ListtileDelete: (){
                    taskData.deleteTask(taskData.tasks[index]);
              },);
            });
      },
    );
  }
}
