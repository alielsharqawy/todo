import 'package:flutter/material.dart';
import 'package:todoapp/models/taks.dart';
class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: "go shopping"),
    Task(name: "car"),
    Task(name: "buy"),
  ];
  void addData(String newtaskTitle){
    tasks.add(Task(name: newtaskTitle));
    notifyListeners();
  }
  void updatetask(Task task){
    task.donechange();
    notifyListeners();
  }
  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}