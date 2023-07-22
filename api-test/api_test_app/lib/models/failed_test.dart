import 'package:api_test_app/models/test.dart';

class FailedTest extends Test {
  final String message;
  final String url;
  const FailedTest(
      {required String name, required this.message, required this.url})
      : super(name: name);

  @override
  List<Object> get props => [name, message, url];
}
