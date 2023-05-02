import 'controllers/controller.dart';
import 'data_source/number_source.dart';
import 'adapters/number_source_class_adapter.dart';
import 'adapters/number_source_object_adapter.dart';

void main() {
  final controller = Controller();

  // class adapter
  final classNumberGetter = NumberSourceClassAdapter();
  controller.performOperation(classNumberGetter);

  // object adapter
  final numberSource = NumberSource();
  final objectNumberGetter =
      NumberSourceObjectAdapter(numberSource: numberSource);
  controller.performOperation(objectNumberGetter);
}
