import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{package}}/features/{{name}}/cubit/{{name}}_cubit.dart';
import 'package:{{package}}/utils/widget/loading.dart';
import 'package:{{package}}/utils/widget/appbar.dart';

class {{name.pascalCase()}}Page extends StatelessWidget {
  static const String route = '/{{name.pathCase()}}';
  const {{name.pascalCase()}}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(text: '{{name.pascalCase()}} Page'),
      body: BlocConsumer<{{name.pascalCase()}}Cubit, {{name.pascalCase()}}State>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          if (state.status == {{name.pascalCase()}}Status.loading) {
            return const LoadingWidget();
          }
          return Center(child: Text("{{name.pascalCase()}} Page"),);
        },
      ),
    );
  }
}
