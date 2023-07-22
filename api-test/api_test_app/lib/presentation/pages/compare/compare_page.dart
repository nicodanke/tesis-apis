import 'package:api_test_app/models/done_test.dart';
import 'package:api_test_app/models/failed_test.dart';
import 'package:api_test_app/presentation/pages/compare/state_logic/compare_page_notifier.dart';
import 'package:api_test_app/presentation/shared_components/done_test_card.dart';
import 'package:api_test_app/presentation/shared_components/failed_test_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ComparePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tests = ref.watch(comparePageProvider.select((value) => value.tests));
    final inProgress =
        ref.watch(comparePageProvider.select((value) => value.inProgress));
    final concurrent =
        ref.watch(comparePageProvider.select((value) => value.concurrent));
    final endpoint =
        ref.watch(comparePageProvider.select((value) => value.endpoint));
    final users =
        ref.watch(comparePageProvider.select((value) => value.parallelUsers));
    final testTime =
        ref.watch(comparePageProvider.select((value) => value.testTime));
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          height: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'Compare APIs',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: endpoint,
                      onChanged: (String? newValue) => ref
                          .read(comparePageProvider.notifier)
                          .setEndpoint(newValue ?? ''),
                      items: <String>[
                        'api/products',
                        'api/products/sales',
                        'api/suppliers/topProducts',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text('/$value'),
                        );
                      }).toList(),
                    ),
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: Text("Parallel"),
                      value: concurrent,
                      onChanged: (newValue) => ref
                          .read(comparePageProvider.notifier)
                          .setConcurrent(),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      initialValue: users,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Users',
                      ),
                      onChanged: (value) => ref
                          .read(comparePageProvider.notifier)
                          .setParallelUsers(value),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextFormField(
                      initialValue: testTime,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Test Time',
                      ),
                      onChanged: (value) => ref
                          .read(comparePageProvider.notifier)
                          .setTestTime(value),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              if (inProgress)
                CircularProgressIndicator()
              else if (tests.isEmpty)
                ElevatedButton(
                  onPressed: () => ref
                      .read(comparePageProvider.notifier)
                      .performTests()
                      .ignore(),
                  child: Text('Iniciar'),
                )
              else ...[
                if (tests.first is FailedTest)
                  FailedTestCard(
                    test: tests.first as FailedTest,
                    showButtons: false,
                  )
                else
                  DoneTestCard(
                    test: tests.first as DoneTest,
                    showButtons: false,
                  ),
                const Divider(),
                if (tests.elementAt(1) is FailedTest)
                  FailedTestCard(
                    test: tests.elementAt(1) as FailedTest,
                    showButtons: false,
                  )
                else
                  DoneTestCard(
                    test: tests.elementAt(1) as DoneTest,
                    showButtons: false,
                  ),
                const Divider(),
                if (tests.last is FailedTest)
                  FailedTestCard(
                    test: tests.last as FailedTest,
                    showButtons: false,
                  )
                else
                  DoneTestCard(
                    test: tests.last as DoneTest,
                    showButtons: false,
                  ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Reset'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () => ref
                          .read(comparePageProvider.notifier)
                          .performTests()
                          .ignore(),
                      child: Text('Run Again'),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
