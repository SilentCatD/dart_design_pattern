import '../controllers/number_presenter.dart';
import '../data_source/number_source.dart';

class NumberSourceObjectAdapter implements NumberPresenter {
  final NumberSource numberSource;

  const NumberSourceObjectAdapter({required this.numberSource});

  @override
  String getNumberFormatted() {
    return numberSource.getNumberFromSource().toInt().toString();
  }
}
