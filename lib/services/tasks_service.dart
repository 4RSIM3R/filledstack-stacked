import 'package:nick_test/models/task_model.dart';

class TasksService {
  final List<TaskModel> _tasks = [
    const TaskModel(title: 'Seed 1', subtitle: 'Just a seeder'),
    const TaskModel(title: 'Seed 2', subtitle: 'Just a seeder'),
  ];

  Future<List<TaskModel>> all() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _tasks;
  }

  void add(TaskModel task) {
    _tasks.add(task);
  }

  void remove(TaskModel task) {
    _tasks.remove(task);
  }

  void edit(TaskModel task) {
    _tasks[_tasks.indexOf(task)] = task;
  }
}
