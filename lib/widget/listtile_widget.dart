import 'package:flutter/material.dart';

class TaskTileWidget extends StatelessWidget {
  final bool isChecked;
  final String tasktittle;
  final void Function(bool?) checkboxchange;
  final void Function() ListtileDelete;

  TaskTileWidget(
      {required this.isChecked,
      required this.tasktittle,
      required this.checkboxchange,
      required this.ListtileDelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tasktittle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxchange,
        activeColor: Colors.purple,
      ),
      onLongPress: ListtileDelete,
    );
  }
}
