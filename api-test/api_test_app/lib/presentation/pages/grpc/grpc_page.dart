import 'package:api_test_app/models/done_test.dart';
import 'package:api_test_app/models/failed_test.dart';
import 'package:api_test_app/models/in_progress_test.dart';
import 'package:api_test_app/presentation/pages/grpc/state_logic/grpc_api_page_notifier.dart';
import 'package:api_test_app/presentation/shared_components/done_test_card.dart';
import 'package:api_test_app/presentation/shared_components/failed_test_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GrpcAPIPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final test = ref.watch(grpcApiPageProvider.select((value) => value.test));
    final endpoint =
        ref.watch(grpcApiPageProvider.select((value) => value.endpoint));
    final users =
        ref.watch(grpcApiPageProvider.select((value) => value.parallelUsers));
    final testTime =
        ref.watch(grpcApiPageProvider.select((value) => value.testTime));
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'Grpc API Test',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 20,
            ),
            DropdownButton<String>(
              isExpanded: true,
              value: endpoint,
              onChanged: (String? newValue) => ref
                  .read(grpcApiPageProvider.notifier)
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
                        .read(grpcApiPageProvider.notifier)
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
                        .read(grpcApiPageProvider.notifier)
                        .setTestTime(value),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            if (test is InProgressTest)
              CircularProgressIndicator()
            else if (test is FailedTest)
              FailedTestCard(
                test: test,
                reset: (wref) =>
                    wref.read(grpcApiPageProvider.notifier).reset(),
                retry: (wref) => wref
                    .read(grpcApiPageProvider.notifier)
                    .performTest()
                    .ignore(),
              )
            else if (test is DoneTest)
              DoneTestCard(
                test: test,
                retry: (wref) => wref
                    .read(grpcApiPageProvider.notifier)
                    .performTest()
                    .ignore(),
                reset: (wref) =>
                    wref.read(grpcApiPageProvider.notifier).reset(),
              )
            else
              ElevatedButton(
                onPressed: () => ref
                    .read(grpcApiPageProvider.notifier)
                    .performTest()
                    .ignore(),
                child: Text('Iniciar'),
              ),
          ],
        ),
      ),
    );
  }
}
