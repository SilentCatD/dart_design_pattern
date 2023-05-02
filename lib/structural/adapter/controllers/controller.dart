import 'number_presenter.dart';

class Controller {
  final NumberPresenter numberPresenter;
  const Controller({required this.numberPresenter});
  void performOperation() {
    final number = numberPresenter.getNumberFormatted();
    print(number);
  }
}
