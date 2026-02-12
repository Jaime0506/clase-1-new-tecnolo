import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task.dart';
import '../providers/task_provider.dart';
import 'add_task_dialog.dart';

class TaskListItem extends StatelessWidget {
  final Task task;

  const TaskListItem({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context, listen: false);

    return ListTile(
      leading: Checkbox(
        value: task.isDone,
        onChanged: (_) => taskProvider.toggleTaskStatus(task.id),
      ),
      title: Text(
        task.title,
        style: TextStyle(
          decoration: task.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () => showDialog(
              context: context,
              builder: (context) => AddTaskDialog(task: task),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => taskProvider.deleteTask(task.id),
          ),
        ],
      ),
    );
  }
}
