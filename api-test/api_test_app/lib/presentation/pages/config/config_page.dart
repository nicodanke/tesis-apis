import 'package:api_test_app/presentation/pages/config/state_logic/config_page_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConfigPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final restAPIUrl =
        ref.watch(configPageProvider.select((value) => value.baseUrlRestApi));
    final mixedAPIUrl =
        ref.watch(configPageProvider.select((value) => value.baseUrlMixedApi));
    final grpcAPIUrl =
        ref.watch(configPageProvider.select((value) => value.baseUrlGrpcApi));
    final salesPort =
        ref.watch(configPageProvider.select((value) => value.salesPort));
    final productsPort =
        ref.watch(configPageProvider.select((value) => value.productsPort));
    final suppliersPort =
        ref.watch(configPageProvider.select((value) => value.suppliersPort));
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'Configuration',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      'Base RestAPI URL:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 7,
                    child: TextFormField(
                      initialValue: restAPIUrl,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Rest API URL',
                      ),
                      onChanged: (value) => ref
                          .read(configPageProvider.notifier)
                          .setBaseUrlRestApi(value),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      'Base MixedAPI URL:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 7,
                    child: TextFormField(
                      initialValue: mixedAPIUrl,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Mixed API URL',
                      ),
                      onChanged: (value) => ref
                          .read(configPageProvider.notifier)
                          .setBaseUrlMixedApi(value),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      'Base gRPC API URL:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 7,
                    child: TextFormField(
                      initialValue: grpcAPIUrl,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'gRPC API URL',
                      ),
                      onChanged: (value) => ref
                          .read(configPageProvider.notifier)
                          .setBaseUrlGrpcApi(value),
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
                    flex: 3,
                    child: Text(
                      'Sales Port:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 7,
                    child: TextFormField(
                      initialValue: salesPort,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Sales Port',
                      ),
                      onChanged: (value) => ref
                          .read(configPageProvider.notifier)
                          .setSalesGrpcApiPort(value),
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
                    flex: 3,
                    child: Text(
                      'Products Port:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 7,
                    child: TextFormField(
                      initialValue: productsPort,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Products Port',
                      ),
                      onChanged: (value) => ref
                          .read(configPageProvider.notifier)
                          .setProductsGrpcApiPort(value),
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
                    flex: 3,
                    child: Text(
                      'Suppliers Port:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 7,
                    child: TextFormField(
                      initialValue: suppliersPort,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Supplier Port',
                      ),
                      onChanged: (value) => ref
                          .read(configPageProvider.notifier)
                          .setSuppliersGrpcApiPort(value),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
