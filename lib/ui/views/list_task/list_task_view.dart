import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nick_test/app/app.locator.dart';
import 'package:nick_test/app/app.router.dart';
import 'package:nick_test/ui/components/task_card.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'list_task_viewmodel.dart';

class ListTaskView extends StackedView<ListTaskViewModel> {
  ListTaskView({Key? key}) : super(key: key);

  final _navigationService = locator<NavigationService>();

  @override
  Widget builder(
    BuildContext context,
    ListTaskViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('Todo-list'),
        actions: [
          IconButton(
            onPressed: () {
              _navigationService.replaceWith(Routes.formTaskView);
            },
            icon: const Icon(CupertinoIcons.add),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: viewModel.isBusy
            ? const Center(
                child: CircularProgressIndicator.adaptive(),
              )
            : Column(
                children: (viewModel.data ?? [])
                    .map(
                      (e) => TaskCard(title: e.title, subtitle: e.subtitle),
                    )
                    .toList(),
              ),
      ),
    );
  }

  @override
  ListTaskViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ListTaskViewModel();
}
