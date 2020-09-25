import 'package:flutter/material.dart';
import 'task.dart';
import 'dart:collection';
class TaskData extends ChangeNotifier
{
  List<Task> _tasks = [
    Task(task: 'Get Milk',isDone: false),
    Task(task: 'Get Eggs',isDone: false),
    Task(task: 'Get Up',isDone: false),
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }
  void addTask(String task){
    _tasks.add(Task(task: task,isDone:false));
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleState();
    notifyListeners();
  }
  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}