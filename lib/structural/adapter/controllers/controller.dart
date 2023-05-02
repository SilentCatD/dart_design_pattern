import 'number_presenter.dart';

class Controller {
  void performOperation(NumberPresenter numberPresenter) {
    final number = numberPresenter.getNumberFormatted();
    print(number);
  }
}
