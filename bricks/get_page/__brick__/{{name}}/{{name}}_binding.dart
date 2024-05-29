import 'package:{{package}}/features/{{name}}/{{name}}_controller.dart';
import 'package:get/get.dart';

class {{name.pascalCase()}}Binding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<{{name.pascalCase()}}Controller>(() => {{name.pascalCase()}}Controller());
  }
}
