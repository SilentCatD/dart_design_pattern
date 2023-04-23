import 'one_digit_operator.dart';

void main() {
  final operator = OneDigitOperator.instance;
  operator.perform(5);
  print(operator.result);
}
