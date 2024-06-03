import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'form_task_viewmodel.dart';

class FormTaskView extends StackedView<FormTaskViewModel> {
  const FormTaskView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FormTaskViewModel viewModel,
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
  FormTaskViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FormTaskViewModel();
}
