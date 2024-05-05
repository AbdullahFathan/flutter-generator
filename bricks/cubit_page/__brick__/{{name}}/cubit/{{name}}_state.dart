part of '{{name}}_cubit.dart';

enum {{name.pascalCase()}}Status { initial, loading, success, empty, eror }

class {{name.pascalCase()}}State extends Equatable {
  const {{name.pascalCase()}}State({
    required this.data,
    required this.status,
    required this.eror,
  });

  final {{name.pascalCase()}}Status status;
  final String eror;

  //*Customize data type
  final int data;

  factory {{name.pascalCase()}}State.initial() => const {{name.pascalCase()}}State(
        data: 0,
        status: {{name.pascalCase()}}Status.initial,
        eror: "",
      );

  @override
  List<Object> get props => [data, status, eror];

  {{name.pascalCase()}}State copyWith({
    int? data,
    {{name.pascalCase()}}Status? status,
    String? eror,
  }) {
    return {{name.pascalCase()}}State(
      data: data ?? this.data,
      status: status ?? this.status,
      eror: eror ?? this.eror,
    );
  }
}
