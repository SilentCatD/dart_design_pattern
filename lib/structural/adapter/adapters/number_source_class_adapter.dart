import '../data_source/number_source.dart';
import '../controllers/number_presenter.dart';

class NumberSourceClassAdapter extends NumberSource implements NumberPresenter {
  @override
  String getNumberFormatted() {
    return getNumberFromSource().toString().padRight(5, '0');
  }
}
