import 'package:nick_test/app/app.locator.dart';
import 'package:nick_test/models/task_model.dart';
import 'package:nick_test/services/tasks_service.dart';
import 'package:stacked/stacked.dart';

class ListTaskViewModel extends FutureViewModel<List<TaskModel>> {
  final service = locator<TasksService>();

  @override
  Future<List<TaskModel>> futureToRun() => service.all();
}
