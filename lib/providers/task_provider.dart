import 'package:flutter/material.dart';
import 'dart:collection';
import '../models/task.dart';

class TaskProvider with ChangeNotifier {
  final List<Task> _tasks = [
    Task(id: '1', title: 'Buy milk'),
    Task(id: '2', title: 'Walk the dog'),
    Task(id: '3', title: 'Do homework'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String title) {
    final newTask = Task(
      id: DateTime.now().toString(),
      title: title,
    );
    _tasks.add(newTask);
    notifyListeners();
  }

  void toggleTaskStatus(String id) {
    final task = _tasks.firstWhere((task) => task.id == id);
    task.isDone = !task.isDone;
    notifyListeners();
  }

  void editTask(String id, String newTitle) {
    final task = _tasks.firstWhere((task) => task.id == id);
    task.title = newTitle;
    notifyListeners();
  }

  void deleteTask(String id) {
    _tasks.removeWhere((task) => task.id == id);
    notifyListeners();
  }
}
