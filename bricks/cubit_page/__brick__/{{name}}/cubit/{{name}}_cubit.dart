import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part '{{name}}_state.dart';

class {{name.pascalCase()}}Cubit extends Cubit<{{name.pascalCase()}}State> {
  {{name.pascalCase()}}Cubit() : super({{name.pascalCase()}}State.initial());

  //TODO: make state function
  //void increment() async{
  // emit(state.copyWith(data: state.data + 1));
  //}
}
