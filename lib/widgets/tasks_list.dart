import 'package:flutter/material.dart';
import 'tasks_tile.dart';
import 'package:todoey/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            task: taskData.tasks[index].task,
            isChecked: taskData.tasks[index].isDone,
            checkBoxCallback: (bool checkedState) {
              taskData.updateTask(taskData.tasks[index]);
            },
            longPressedCallback:(){
              taskData.deleteTask(taskData.tasks[index]);
          }
          );
        },
        itemCount: Provider.of<TaskData>(context).tasks.length,
      );
    });
  }
}
