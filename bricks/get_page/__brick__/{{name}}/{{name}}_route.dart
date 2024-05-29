import 'package:get/get.dart';
import '{{name}}_binding.dart';
import '{{name}}_page.dart';

final {{name.camelCase()}}Route = [
  GetPage(
    name: {{name.pascalCase()}}Page.route,
    page: () => const {{name.pascalCase()}}Page(),
    binding: {{name.pascalCase()}}Binding(),
  ),
];
