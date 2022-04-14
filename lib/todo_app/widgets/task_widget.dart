import 'package:flutter/material.dart';
import 'package:state_managment/todo_app/data/tasks_data.dart';
import 'package:state_managment/todo_app/models/task_model.dart';

class TaskWidget extends StatelessWidget {
  Function fun;
  Function removeItem;
  Task task;
  TaskWidget(this.task, this.fun ,this.removeItem);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: task.isCompleted ? Colors.green : Colors.black45,
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      child: CheckboxListTile(
        title: Text(task.title),
        value: task.isCompleted,
        secondary: IconButton(icon: Icon(Icons.delete),
        onPressed: ()=>removeItem(task),
        )
        ,
        onChanged: (v) {
          fun(task);
        },
      ),
    );
  }
}


 
