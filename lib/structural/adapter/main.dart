import 'controllers/controller.dart';
import 'data_source/number_source.dart';
import 'adapters/number_source_class_adapter.dart';
import 'adapters/number_source_object_adapter.dart';

void main() {
  // class adapter
  final classNumberGetter = NumberSourceClassAdapter();
  final controller = Controller(numberPresenter: classNumberGetter);
  controller.performOperation();

  // object adapter
  final numberSource = NumberSource();
  final objectNumberGetter =
  NumberSourceObjectAdapter(numberSource: numberSource);
  final controller2 = Controller(numberPresenter: objectNumberGetter);
  controller2.performOperation();
}
