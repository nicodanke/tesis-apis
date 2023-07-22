import 'package:equatable/equatable.dart';

class Test extends Equatable {
  final String name;

  const Test({required this.name});

  @override
  List<Object> get props => [name];
}
