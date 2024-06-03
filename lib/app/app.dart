import 'package:nick_test/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:nick_test/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:nick_test/ui/views/home/home_view.dart';
import 'package:nick_test/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:nick_test/ui/views/detail_task/detail_task_view.dart';
import 'package:nick_test/ui/views/list_task/list_task_view.dart';
import 'package:nick_test/ui/views/form_task/form_task_view.dart';
import 'package:nick_test/services/tasks_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: DetailTaskView),
    MaterialRoute(page: ListTaskView),
    MaterialRoute(page: FormTaskView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: TasksService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
