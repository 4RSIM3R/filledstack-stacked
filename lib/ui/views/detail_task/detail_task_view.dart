import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'detail_task_viewmodel.dart';

class DetailTaskView extends StackedView<DetailTaskViewModel> {
  const DetailTaskView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DetailTaskViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  DetailTaskViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DetailTaskViewModel();
}
