abstract class OneDigitOperator {
  static OneDigitOperator? _instance;

  OneDigitOperator._();

  static OneDigitOperator get instance {
    _instance ??= _createInstance();
    return _instance!;
  }

  static OneDigitOperator _createInstance() => AdditionOperator._();

  int _result = 0;

  int get result => _result;

  void perform(int input);
}

class AdditionOperator extends OneDigitOperator {
  AdditionOperator._() : super._();

  @override
  void perform(int input) {
    _result += input;
  }
}

class SubtractionOperator extends OneDigitOperator {
  SubtractionOperator._() : super._();

  @override
  void perform(int input) {
    _result -= input;
  }
}
