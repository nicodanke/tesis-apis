import 'package:api_test_app/models/test.dart';

class InProgressTest extends Test {
  final double testTime;
  final String url;
  const InProgressTest(
      {required String name, required this.testTime, required this.url})
      : super(name: name);

  @override
  List<Object> get props => [name, testTime, url];
}
