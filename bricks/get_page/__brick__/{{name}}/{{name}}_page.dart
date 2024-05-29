import 'package:{{package}}/features/{{name}}/{{name}}_controller.dart';
import 'package:{{package}}/utils/widget/appbar.dart';
import 'package:{{package}}/utils/widget/state_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class {{name.pascalCase()}}Page extends GetView<{{name.pascalCase()}}Controller> {
  static const route ='/{{name.pathCase()}}';
  const {{name.pascalCase()}}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(text: '{{name.pascalCase()}} Page'),
      body: Obx(
        () => RefreshIndicator(
          onRefresh: () => controller.loadData(),
          child: StateHelperWidget(
            isLoading: controller.isLoading,
            isEmpty: controller.isEmpty,
            isEror: controller.isEror,
            body: const Center(
              child: Text('{{name.pascalCase()}} Page'),
            ),
          ),
        ),
      ),
    );
  }
}
