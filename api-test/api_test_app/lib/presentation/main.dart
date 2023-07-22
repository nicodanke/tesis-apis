import 'package:api_test_app/presentation/pages/compare/compare_page.dart';
import 'package:api_test_app/presentation/pages/config/config_page.dart';
import 'package:api_test_app/presentation/pages/grpc/grpc_page.dart';
import 'package:api_test_app/presentation/pages/mixed_api/mixed_api_page.dart';
import 'package:api_test_app/presentation/pages/rest_api/rest_api_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tesis Dankiewicz UB',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = RestAPIPage();
        break;
      case 1:
        page = MixedAPIPage();
        break;
      case 2:
        page = GrpcAPIPage();
        break;
      case 3:
        page = ComparePage();
        break;
      case 4:
        page = ConfigPage();
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: Row(
          children: [
            SafeArea(
              child: NavigationRail(
                extended: constraints.maxWidth >= 600,
                destinations: [
                  NavigationRailDestination(
                    icon: Icon(Icons.api),
                    label: Text('RestAPI'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.api),
                    label: Text('Mixed API'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.api),
                    label: Text('gRPC'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.compare),
                    label: Text('Compare'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.settings),
                    label: Text('Settings'),
                  ),
                ],
                selectedIndex: selectedIndex,
                onDestinationSelected: (value) {
                  setState(() {
                    selectedIndex = value;
                  });
                },
              ),
            ),
            Expanded(
              child: Container(
                color: Theme.of(context).colorScheme.primaryContainer,
                child: page,
              ),
            ),
          ],
        ),
      );
    });
  }
}
