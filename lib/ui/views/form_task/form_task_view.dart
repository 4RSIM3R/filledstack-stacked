import 'package:flutter/material.dart';
import 'package:nick_test/ui/views/form_task/form_task_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'form_task_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'title'),
  FormTextField(name: 'subtitle'),
])
class FormTaskView extends StackedView<FormTaskViewModel> with $FormTaskView {
  const FormTaskView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FormTaskViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(title: const Text('Add todo')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              controller: titleController,
              decoration: const InputDecoration(hintText: 'Title'),
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: titleController,
              decoration: const InputDecoration(hintText: 'Subtitle'),
            ),
            Expanded(child: Container()),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Submit'),
            )
          ],
        ),
      ),
    );
  }

  @override
  FormTaskViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FormTaskViewModel();
}
